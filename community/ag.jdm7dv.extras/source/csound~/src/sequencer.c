/*
 *  record.c
 *  csound~
 *
 *  Created by Davis Pyon on 6/14/06.
 *  Copyright 2006 __MyCompanyName__. All rights reserved.
 *
 */

#include "sequencer.h"

Sequencer* Sequencer_New(CSOUND *csound, ChannelGroup *inChannelGroup, MidiBuffer *midiInputBuffer, char *path, char *defaultPath)
{		
	Sequencer *s = NULL;
	RecordControl *rc = NULL;
	int i;
	
	s = (Sequencer *) MemoryNewClear(sizeof(Sequencer));
	
	s->csound = csound;
	s->sr = DEFAULT_SAMPLE_RATE;
	s->time = s->nticks = s->fticks = 0;
	s->nSamples = 0;
	s->timerPeriod = s->timerRes = 1;
	Sequencer_SetBPM(s, DEFAULT_BPM);
	s->maxClock = clock_new(s, (method)Sequencer_TimerCallback);
	
	pthread_mutex_init(&s->mutex, NULL);
	
	rc = &s->recordControl;
	rc->curPlayEvent = &rc->recEventListHdr;
	rc->curRecEvent = &rc->recEventListHdr;
	rc->recEventListHdr.next = NULL;
	rc->recording = FALSE;
	rc->playing = FALSE;
	
	s->inChannelGroup = inChannelGroup;
	s->midiInputBuffer = midiInputBuffer;
	
	// When dynamically creating a 2-dimensional array, must allocate
	// like so...
	s->ctrlMatrix = (byte**) MemoryNew(sizeof(byte*) * 16);
	for(i=0; i<16; i++) 
	{
		s->ctrlMatrix[i] = (byte*) MemoryNewClear(128);
		memset(s->ctrlMatrix[i], 0xFF, 128);  // A value of 128 or greater signifies non-dirtyness.
	}
	
	s->path = path;
	s->defaultPath = defaultPath;
	s->recordControl.numRecEvents = 0;
	s->readWriteThreadExists = false;
	
	return s;
}

void Sequencer_Free(Sequencer *s)
{	
	int i;
	clock_unset(s->maxClock);
	freeobject((t_object *) s->maxClock);
	
	Sequencer_StopRecording(s);
	Sequencer_StopPlaying(s);
	Sequencer_FreeAllRecEvents(s);
	
	pthread_mutex_destroy(&s->mutex);
	
	for(i=0; i<16; i++) MemoryFree(s->ctrlMatrix[i]);
	free(s->ctrlMatrix);
}

float Sequencer_CalcMsPerTick(float bpm)
{
	float temp = 0.0f;

	temp = bpm / 60000.0f; // beats per ms
	temp *= TICK_RESOLUTION; // ticks per ms
	temp = (float) pow((double)temp, -1.0);  // ms per tick	
	return temp;
}

void Sequencer_SetBPM(Sequencer *s, float bpm)
{
	if(bpm >= MIN_BPM && bpm <= MAX_BPM)
	{
		s->bpm = bpm;
		s->ms_per_tick = Sequencer_CalcMsPerTick(bpm);
		s->microSecPerBeat = (long) (60.0f * 1000000.0f / bpm);
	}
}

int Sequencer_AdvanceTicks(Sequencer *s)
{
	s->nticks = (int)((s->fticks + s->timerPeriod * 1000 * TICK_RESOLUTION) / s->microSecPerBeat);
	s->fticks += (int)((s->timerPeriod * 1000 * TICK_RESOLUTION) - (s->nticks * s->microSecPerBeat));
	
	return s->nticks;
}

void Sequencer_TimerCallback(Sequencer *s)
{
	RecordControl *rc = &s->recordControl;
	int tickDelta = 0;
	
	if(rc->playing) Sequencer_ProcessEvents(s);
		
	// Now, advance the tick count.
	tickDelta = Sequencer_AdvanceTicks(s);
	s->time += tickDelta;
	
	if(s->time >= MAX_TIME)
	{
		if(rc->playing) Sequencer_StopPlaying(s);
		if(rc->recording) Sequencer_StopRecording(s);
	}
	
	if(rc->recording || rc->playing) clock_fdelay(s->maxClock, 1);
}

void Sequencer_SampleBasedTimerCallback(Sequencer *s)
{
	RecordControl *rc = &s->recordControl;
	int tickDelta = 0;
	
	Sequencer_ProcessEvents(s);
		
	// Now, advance the tick count.
	tickDelta = Sequencer_AdvanceTicks(s);
	s->time += tickDelta;
	
	if(s->time >= MAX_TIME)
	{
		if(rc->playing) Sequencer_StopPlaying(s);
		if(rc->recording) Sequencer_StopRecording(s);
	} 
}

void Sequencer_AdvanceSampleCount(Sequencer *s, int n)
{	
	//RecordControl *rc = &s->recordControl;
		
	s->nSamples += n * 1000;

	while(s->nSamples >= s->sr)
	{
		s->nSamples -= s->sr;
		Sequencer_SampleBasedTimerCallback(s);
	}
}

void Sequencer_StartRecording(Sequencer *s, ChannelGroup *c)
{
	int i;
	RecordControl *rc = &s->recordControl;
	ChannelObject *co = NULL;
	byte ch, ctrl;
	byte buf[3];
	
	if(s->readWriteThreadExists) 
	{
		post("csound~: Can't start recording; currently writing/reading a file.");
		return;
	}

	if(rc->playing) Sequencer_StopPlaying(s);

	if(!rc->recording)
	{
		Sequencer_FreeAllRecEvents(s);
		
		s->time = s->nticks = s->fticks = 0;
		Sequencer_SetBPM(s, DEFAULT_BPM);
		s->recordControl.recording = TRUE;
		
		// Add one Control event for each ChannelObject in the table.
		if(pthread_mutex_lock(&c->mutex) == 0)
		{
			for(i=0; i<HASH_TABLE_SIZE; i++)
			{
				co = c->hashTable[i];
				while(co)
				{
					if(IsControlChannel(co))
						Sequencer_AddControlEvent(s, co->name, co->value, true);
					else if(IsStringChannel(co))
						Sequencer_AddStringEvent(s, co->name, co->str, true);
					co = co->next;
				}
			}
			pthread_mutex_unlock(&c->mutex);
		}
		
		// Add one MIDI ctrl event for every non-zero entry in the
		// ctrlMatrix.
		for(ch=0; ch<16; ch++)
			for(ctrl=0; ctrl<128; ctrl++)
			{
				if(s->ctrlMatrix[ch][ctrl] < 128)
				{
					buf[0] = 0xB0 | ch;
					buf[1] = ctrl;
					buf[2] = s->ctrlMatrix[ch][ctrl];
					Sequencer_AddMIDIEvent(s, buf, 3, true);
				}
			}
		
		// Set the time to 1 so that we can distinguish between
		// recorded events and initializing events.
		s->time = 1;		
		
		clock_fdelay(s->maxClock, 1);
	}
}

void Sequencer_StopRecording(Sequencer *s)
{
	RecordControl *rc = &s->recordControl;
	RecEvent *re = NULL;
	bool firstEventFound = FALSE;
	int firstEventTime = 1;
	int i, j, active_note_count[16][127];
	byte status = 0, chan, pitch, vel, b[3];
	
	rc->recording = FALSE;
	
	memset(active_note_count, 0, 16 * 127 * sizeof(int));
	
	// Find the first event with time >= 1 and subtract
	// object's time - 1 from that event and all subsequent
	// events.  In other words, move all recorded events
	// back in time so that when the user hits play, 
	// playback of recorded events will begin immediately.
	// Events with time == 0 are initializing events; that's
	// why we're looking for first event with time >= 1.
	
	// While moving events in time, keep track of MIDI note-on's and note-off's.
	// After going through all events, take care of hanging MIDI notes.
	
	if(pthread_mutex_lock(&s->mutex) == 0)
	{
		re = rc->recEventListHdr.next;
		
		while(re)
		{
			if(re->time > 0)
			{
				if(!firstEventFound)
				{
					firstEventFound = TRUE;
					firstEventTime = re->time;
				}
				
				re->time -= firstEventTime - 1;
			}
			
			if(re->type == RECEVENT_TYPE_MIDI)
			{
				status = *(byte*)re->data1 & 0xf0;
				switch(status)
				{
				case 0x80: // Note-off
					chan = *(byte*)re->data1 & 0x0f;
					pitch = *((byte*)re->data1+1);
					if(active_note_count[chan][pitch] > 0)
						active_note_count[chan][pitch] -= 1;
					break;
				case 0x90: // Note-on
					chan = *(byte*)re->data1 & 0x0f;
					pitch = *((byte*)re->data1+1);
					vel = *((byte*)re->data1+2);
					if(vel > 0)
						active_note_count[chan][pitch] += 1;
					else if(active_note_count[chan][pitch] > 0)
						active_note_count[chan][pitch] -= 1;
					break;
				}
			}
			
			re = re->next;
		}
		
		// If any entries in active_note_count[][] are > 0, add a note-off for that chan+pitch.
		for(i=0; i<16; i++)
		{
			for(j=0; j<127; j++)
			{
				if(active_note_count[i][j] > 0)
				{
					b[0] = (byte)i | 0x80;
					b[1] = (byte)j;
					b[2] = 0;
					Sequencer_AddMIDIEvent(s, b, 3, false);
				}
			}
		}
		
		pthread_mutex_unlock(&s->mutex);
	}
}

void Sequencer_StartPlaying(Sequencer *s)
{
	RecordControl *rc = &s->recordControl;
	
	if(s->readWriteThreadExists) 
	{
		post("csound~: Can't start playing; currently writing/reading a file.");
		return;
	}
	
	if(rc->recording) Sequencer_StopRecording(s);
	
	if(pthread_mutex_lock(&s->mutex) == 0)
	{
		rc->curPlayEvent = &rc->recEventListHdr;
		rc->playing = TRUE;
		pthread_mutex_unlock(&s->mutex);
		
		s->time = s->nticks = s->fticks = 0;
		
		memset(s->active_note_count, 0, 16 * 127 * sizeof(int)); // reset active notes matrix entries to zero
		
		clock_fdelay(s->maxClock, 1);
	}
}

void Sequencer_StopPlaying(Sequencer *s)
{
	RecordControl *rc = &s->recordControl;
	int i, j;
	byte b[3];
	
	if(pthread_mutex_lock(&s->mutex) == 0)
	{
		rc->curPlayEvent = &rc->recEventListHdr;
		rc->playing = FALSE;
		
		// Get rid of hanging notes.
		for(i=0; i<16; i++)
		{
			for(j=0; j<127; j++)
			{
				if(s->active_note_count[i][j] > 0)
				{
					b[0] = (byte)i | 0x80;
					b[1] = (byte)j;
					b[2] = 0;
					MidiBuffer_EnqueueBuffer(s->midiInputBuffer, b, 3);
				}
			}
		}
		
		pthread_mutex_unlock(&s->mutex);
	}
}

void Sequencer_AddCsoundEvent(Sequencer *s, char *buf, bool lock)
{
	RecordControl *rc = &s->recordControl;
	RecEvent *re = NULL;
	int len = strlen(buf);
	
	if(len >= MAX_EVENT_MESSAGE_SIZE)
	{
		post("Sequencer_AddCsoundEvent(): Event string size %d too large.  Max size is %d.", 
		     len, MAX_EVENT_MESSAGE_SIZE - 1);
		return;
	}
	
	re = (RecEvent*) MemoryNewClear(sizeof(RecEvent));
	
	if(re == NULL)
	{
		post("Sequencer_AddCsoundEvent(): MemoryNewClear() failed.");
	}
	else
	{
		re->type = RECEVENT_TYPE_CSOUND;
		re->time = s->time;
		re->data1 = (void*) MemoryNew(strlen(buf) + 1);
		if(re->data1 != NULL)
			strcpy((char*)re->data1, buf);
		else
		{
			post("Sequencer_AddCsoundEvent(): MemoryNew() failed.");
			MemoryFree(re);
			return;
		}
		
		if(!lock || pthread_mutex_lock(&s->mutex) == 0)
		{
			// Add new RecEvent to end of list headed by rc->recEventListHdr.
			rc->curRecEvent->next = re;
			rc->curRecEvent = re;
			
			if(lock) pthread_mutex_unlock(&s->mutex);
		}
		rc->numRecEvents++;
	}
}

void Sequencer_AddControlEvent(Sequencer *s, char *name, float value, bool lock)
{
	RecordControl *rc = &s->recordControl;
	RecEvent *re = NULL;
	
	re = (RecEvent*) MemoryNewClear(sizeof(RecEvent));
	
	if(re == NULL)
	{
		post("Sequencer_AddControlEvent(): MemoryNewClear() failed.");
	}
	else
	{
		re->type = RECEVENT_TYPE_CONTROL;
		re->time = s->time;
		re->data1 = (void*) MemoryNew(strlen(name) + 1);
		if(re->data1 != NULL) strcpy((char*)re->data1, name);
		re->data2 = (void*) MemoryNew(sizeof(float));
		if(re->data2 != NULL) *((float*)re->data2) = value;
		
		if(re->data1 == NULL || re->data2 == NULL)
		{
			post("Sequencer_AddControlEvent(): MemoryNew() failed.");
			MemoryFree(re->data1);
			MemoryFree(re->data2);
			MemoryFree(re);
			return;
		}
		
		if(!lock || pthread_mutex_lock(&s->mutex) == 0)
		{
			// Add new RecEvent to end of list headed by rc->recEventListHdr.
			rc->curRecEvent->next = re;
			rc->curRecEvent = re;
			
			if(lock) pthread_mutex_unlock(&s->mutex);
		}
		
		rc->numRecEvents++;
	}
}

void Sequencer_AddStringEvent(Sequencer *s, char *name, char *str, bool lock)
{
	RecordControl *rc = &s->recordControl;
	RecEvent *re = NULL;
	int string_len = strlen(str) + 1;
	
	re = (RecEvent*) MemoryNewClear(sizeof(RecEvent));
	
	if(re == NULL)
	{
		post("Sequencer_AddControlEvent(): MemoryNewClear() failed.");
	}
	else
	{
		re->type = RECEVENT_TYPE_STRING;
		re->time = s->time;
		re->data1 = (void*) MemoryNew(strlen(name) + 1);
		if(re->data1 != NULL) strcpy((char*)re->data1, name);
		re->data2 = (void*) MemoryNew(string_len + 1);
		if(re->data2 != NULL) memcpy(re->data2, str, string_len);
		
		if(re->data1 == NULL || re->data2 == NULL)
		{
			post("Sequencer_AddControlEvent(): MemoryNew() failed.");
			MemoryFree(re->data1);
			MemoryFree(re->data2);
			MemoryFree(re);
			return;
		}
		
		if(!lock || pthread_mutex_lock(&s->mutex) == 0)
		{
			// Add new RecEvent to end of list headed by rc->recEventListHdr.
			rc->curRecEvent->next = re;
			rc->curRecEvent = re;
			
			if(lock) pthread_mutex_unlock(&s->mutex);
		}
		
		rc->numRecEvents++;
	}
}

void Sequencer_AddMIDIEvent(Sequencer *s, byte *buf, int nBytes, bool lock)
{
	RecordControl *rc = &s->recordControl;
	RecEvent *re = NULL;
	
	re = (RecEvent*) MemoryNewClear(sizeof(RecEvent));
	
	if(re == NULL)
	{
		post("Sequencer_AddMIDIEvent(): MemoryNewClear() failed.");
	}
	else
	{
		re->type = RECEVENT_TYPE_MIDI;
		re->time = s->time;
		re->data1 = (void*) MemoryNew(nBytes);
		if(re->data1 != NULL) memcpy(re->data1, buf, nBytes);
		re->data2 = (void*) MemoryNew(sizeof(int));
		if(re->data2 != NULL) *((int*)re->data2) = nBytes;
		
		if(re->data1 == NULL || re->data2 == NULL)
		{
			post("Sequencer_AddMIDIEvent(): MemoryNew() failed.");
			MemoryFree(re->data1);
			MemoryFree(re->data2);
			MemoryFree(re);
			return;
		}
		
		if(!lock || pthread_mutex_lock(&s->mutex) == 0)
		{
			// Add new RecEvent to end of list headed by rc->recEventListHdr.
			rc->curRecEvent->next = re;
			rc->curRecEvent = re;
			
			if(lock) pthread_mutex_unlock(&s->mutex);
		}
		rc->numRecEvents++;
	}
}

void Sequencer_FreeRecEvent(RecEvent *re)
{
	MemoryFree(re->data1);
	MemoryFree(re->data2);
	MemoryFree(re);
}

void Sequencer_FreeAllRecEvents(Sequencer *s)
{
	RecordControl *rc = &s->recordControl;
	RecEvent *re = NULL, *tmpRe = NULL;
	
	if(pthread_mutex_lock(&s->mutex) == 0)
	{
		re = &rc->recEventListHdr;
		while(re->next != NULL)
		{
			tmpRe = re->next->next;
			Sequencer_FreeRecEvent(re->next);
			re->next = tmpRe;
		}
		rc->curRecEvent = &rc->recEventListHdr;	
		pthread_mutex_unlock(&s->mutex);
	}
	
	rc->numRecEvents = 0;
}

void Sequencer_ProcessEvents(Sequencer *s)
{
	RecordControl *rc = &s->recordControl;
	RecEvent *re = NULL;
	ChannelObject *co = NULL;
	byte status, chan, pitch, vel;
	
	if(pthread_mutex_lock(&s->mutex) == 0)
	{
		re = rc->curPlayEvent;
		if(re == NULL)
		{
			rc->playing = FALSE;
		}
		
		if(re == &rc->recEventListHdr) re = re->next;
		while(re)
		{
			if(re->time <= s->time)
			{
				switch(re->type)
				{
				case RECEVENT_TYPE_CSOUND:
					csoundInputMessage(s->csound, (char*)re->data1);
					break;
				case RECEVENT_TYPE_CONTROL:
					pthread_mutex_lock(&s->inChannelGroup->mutex);
					co = FindCreateChannel(s->inChannelGroup, (char*)re->data1, CSOUND_INPUT_CHANNEL | CSOUND_CONTROL_CHANNEL, false);
					SetChannelVal(co, *((float*)re->data2));
					pthread_mutex_unlock(&s->inChannelGroup->mutex);
					break;
				case RECEVENT_TYPE_STRING:
					pthread_mutex_lock(&s->inChannelGroup->mutex);
					co = FindCreateChannel(s->inChannelGroup, (char*)re->data1, CSOUND_INPUT_CHANNEL | CSOUND_STRING_CHANNEL, false);
					SetChannelString(co, (char*)re->data2);
					pthread_mutex_unlock(&s->inChannelGroup->mutex);
					break;
				case RECEVENT_TYPE_MIDI:
					MidiBuffer_EnqueueBuffer(s->midiInputBuffer, (byte*)re->data1, *((int*)re->data2));
					
					// Keep track of note-on/off's.
					status = *(byte*)re->data1 & 0xf0;
					switch(status)
					{
					case 0x80: // Note-off
						chan = *(byte*)re->data1 & 0x0f;
						pitch = *((byte*)re->data1+1);
						if(s->active_note_count[chan][pitch] > 0)
							s->active_note_count[chan][pitch] -= 1;
						break;
					case 0x90: // Note-on
						chan = *(byte*)re->data1 & 0x0f;
						pitch = *((byte*)re->data1+1);
						vel = *((byte*)re->data1+2);
						if(vel > 0)
							s->active_note_count[chan][pitch] += 1;
						else if(s->active_note_count[chan][pitch] > 0)
							s->active_note_count[chan][pitch] -= 1;
						break;
					}
					
					break;
				default: break;
				}
				re = re->next;
				rc->curPlayEvent = re;
			}
			else break;
		}
		pthread_mutex_unlock(&s->mutex);
	}
}

void Sequencer_WriteToFile(Sequencer *s)
{
	FILE *fp = NULL;
	char *filename = s->writeFilename;
	byte *buffer = NULL;
	int realloc_result=0, result=0, len, byteCount = 0, bufferSize = DEFAULT_SAVE_LOAD_BUFFER_SIZE;
	RecordControl *rc = &s->recordControl;
	RecEvent *re = NULL;
	static int magic = FILE_MAGIC_NUMBER;
	
	if(rc->playing) Sequencer_StopPlaying(s);
	if(rc->recording) Sequencer_StopRecording(s);
	
	pthread_mutex_lock(&s->mutex);
	
	if(strlen(s->path)) change_directory(s->path);
	else if(strlen(s->defaultPath)) change_directory(s->defaultPath);
	
	fp = fopen(filename, "wb");
	
	if(fp == NULL)
	{
		post("fopen() failed for %s", filename);
		pthread_mutex_unlock(&s->mutex);
		return;
	}
	
	buffer = (byte *) MemoryNew(bufferSize);
	
	if(buffer == NULL)
	{
		post("MemoryNew() failed to create buffer for writing to %s", filename);
		pthread_mutex_unlock(&s->mutex);
		return;
	}
	
	// First is the magic number.
	realloc_result = BufferWrite(&buffer, &magic, sizeof(int), &byteCount, &bufferSize);
	
	// Then comes the # of events.
	if(!realloc_result)
		realloc_result = BufferWrite(&buffer, &rc->numRecEvents, sizeof(int), &byteCount, &bufferSize);
	
	// Now we add the events.
	re = rc->recEventListHdr.next;
	while(re)
	{
		// Save type.
		if(!realloc_result) 
			realloc_result = BufferWrite(&buffer, &re->type, sizeof(int), &byteCount, &bufferSize);
		
		// Save time.
		if(!realloc_result) 
			realloc_result = BufferWrite(&buffer, &re->time, sizeof(int), &byteCount, &bufferSize);

		// Get data1 size.
		switch(re->type)
		{
		case RECEVENT_TYPE_CSOUND: 
		case RECEVENT_TYPE_CONTROL:
		case RECEVENT_TYPE_STRING:
			len = strlen((char*)re->data1) + 1;
			break;
		case RECEVENT_TYPE_MIDI:
			len = *(int*)re->data2;
			break;
		}

		// Save data1 size.
		if(!realloc_result) 
			realloc_result = BufferWrite(&buffer, &len, sizeof(int), &byteCount, &bufferSize);
		
		// Save data1.		
		if(!realloc_result) 
			realloc_result = BufferWrite(&buffer, re->data1, len, &byteCount, &bufferSize);

		// Get data2 size.
		switch(re->type)
		{
		case RECEVENT_TYPE_CSOUND:
		case RECEVENT_TYPE_MIDI:
			len = 0;
			break;
		case RECEVENT_TYPE_CONTROL:
			len = sizeof(float);
			break;
		case RECEVENT_TYPE_STRING:
			len = strlen((char*)re->data2) + 1;
			break;
		}

		// Save data2 size.
		if(!realloc_result) 
			realloc_result = BufferWrite(&buffer, &len, sizeof(int), &byteCount, &bufferSize);
		
		// Save data2.
		if(!realloc_result && len > 0)
			realloc_result = BufferWrite(&buffer, re->data2, len, &byteCount, &bufferSize);
		
		if(realloc_result) break;
		
		re = re->next;
	}
	
	if(!realloc_result)
		result = fwrite(buffer, 1, byteCount, fp);
	
	fclose(fp);
	
	if(realloc_result == 1 || result != byteCount) post("fwrite() failed to write to %s.", filename);
	else post("%s successfully saved.", filename);
	
	MemoryFree(buffer);
	pthread_mutex_unlock(&s->mutex);
	s->readWriteThreadExists = false;
	pthread_exit(NULL);
}

void Sequencer_ReadFromFile(Sequencer *s)
{
	RecordControl *rc = &s->recordControl;
	char *filename = s->readFilename;
	FILE *fp = NULL;
	byte *buffer = NULL, *bytePtr = NULL;
	long fileSize = 0;
	int numEvents = 0, result;
	int i, type, time, len, data2_size, magic;
	char buf[MAX_EVENT_MESSAGE_SIZE];
	float value;
	bool reverse = FALSE;
	int magic_number = FILE_MAGIC_NUMBER;
	int magic_number_reverse = magic_number;
	
	reverseBytes((byte*)&magic_number_reverse, sizeof(int));
	
	if(rc->playing) Sequencer_StopPlaying(s);
	if(rc->recording) Sequencer_StopRecording(s);
	Sequencer_FreeAllRecEvents(s);
	
	pthread_mutex_lock(&s->mutex);
	
	if(strlen(s->path)) change_directory(s->path);
	else if(strlen(s->defaultPath)) change_directory(s->defaultPath);
	
	fp = fopen(filename, "rb");
	
	if(fp == NULL)
	{
		error("csound~: fopen() failed for %s", filename);
		pthread_mutex_unlock(&s->mutex);
		return;
	}

	fseek(fp, 0, SEEK_END);
	fileSize = ftell(fp);
	fseek(fp, 0, SEEK_SET);
	
	buffer = (byte*) MemoryNew(fileSize);
	
	if(buffer == NULL)
	{
		error("csound~: MemoryNew() failed to create buffer for reading from %s", filename);
		pthread_mutex_unlock(&s->mutex);
		fclose(fp);
		return;
	}
	
	result = fread(buffer, 1, fileSize, fp);

	if(result != fileSize)
	{
		fclose(fp);
		MemoryFree(buffer);
		error("csound~: fread() failed for %s", filename);
		pthread_mutex_unlock(&s->mutex);
		return;
	}
	
	fclose(fp);
	
	bytePtr = buffer;
	
	magic = *(int*)bytePtr;
	bytePtr += sizeof(int);
	
	if(magic != magic_number && magic != magic_number_reverse)
	{
		error("csound~: %s is not a csound~ recorded sequence.", filename);
	}
	else
	{
		if(magic == magic_number_reverse) reverse = TRUE;
		numEvents = *(int*)bytePtr;
		reverseNumber((byte*)&numEvents, sizeof(int), reverse);
		bytePtr += sizeof(int);
		
		for(i=0; i<numEvents; i++)
		{
			type = *(int*)bytePtr;
			reverseNumber((byte*)&type, sizeof(int), reverse);
			bytePtr += sizeof(int);
			
			time = *(int*)bytePtr;
			reverseNumber((byte*)&time, sizeof(int), reverse);
			bytePtr += sizeof(int);
			
			len = *(int*)bytePtr; // data1 size
			reverseNumber((byte*)&len, sizeof(int), reverse);
			bytePtr += sizeof(int);
			
			s->time = time;		// must set time before adding event
			
			switch(type)
			{
			case RECEVENT_TYPE_CSOUND:
				memcpy(buf, bytePtr, len);		// get data1
				bytePtr += len + sizeof(int);	// skip data1 and data2 size (== 0 in this case)
				Sequencer_AddCsoundEvent(s, buf, false);
				break;
			case RECEVENT_TYPE_CONTROL:
				memcpy(buf, bytePtr, len);		// get data1
				bytePtr += len + sizeof(int);	// skip data1 and data2 size (== sizeof(float) in this case)
				value = *(float*)bytePtr;		// get data2
				reverseNumber((byte*)&value, sizeof(int), reverse);
				bytePtr += sizeof(float);		// skip data2
				Sequencer_AddControlEvent(s, buf, value, false);
				break;
			case RECEVENT_TYPE_STRING:
				memcpy(buf, bytePtr, len);		// get data1
				bytePtr += len;					// skip data1
				data2_size = *(int*)bytePtr;	// get data2 size
				bytePtr += sizeof(int);			// skip data2 size
				Sequencer_AddStringEvent(s, buf, (char*)bytePtr, false); // Add data2 string to sequencer.
				bytePtr += data2_size;			// skip data2
				break;
			case RECEVENT_TYPE_MIDI:
				memcpy(buf, bytePtr, len);		// data1
				bytePtr += len + sizeof(int);	// skip data1 and data2 size (== 0 in this case)
				Sequencer_AddMIDIEvent(s, (byte*) buf, len, false);
				break;
			}
		}
		
		post("csound~: \"%s\" successfully read into csound~.", filename);
	}
	
	MemoryFree(buffer);
	pthread_mutex_unlock(&s->mutex);
	s->readWriteThreadExists = false;
	pthread_exit(NULL);
}
