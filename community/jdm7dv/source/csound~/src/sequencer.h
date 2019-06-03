/*
 *  csound~ : A MaxMSP external interface for the Csound API.
 *
 *  Created by Davis Pyon on 2/4/06.
 *  Copyright 2006 Davis Pyon. All rights reserved.
 *
 * L I C E N S E
 *
 * This software is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this software; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */


#include "commondefs.h"
#include "ext.h"
#include "csound.h"
#include "channel.h" 
#include "midi.h"
#include "util.h"

#ifndef _SEQUENCER_H
#define _SEQUENCER_H

#ifdef MACOSX
	#include <pthread.h>
#endif

typedef enum {
RECEVENT_TYPE_CSOUND, 
RECEVENT_TYPE_CONTROL, 
RECEVENT_TYPE_MIDI,
RECEVENT_TYPE_STRING
} RecEventType;

#define TICK_RESOLUTION 480			// ticks per beat
#define MIN_BPM 20
#define MAX_BPM 500
#define DEFAULT_BPM 120.0
#define MAX_TIME 3456000			// TICK_RESOLUTION * 120 bpm * 60 minutes
#define FILE_MAGIC_NUMBER 0x1357	// Each recorded sequence file starts with this integer.

#define DEFAULT_SAVE_LOAD_BUFFER_SIZE 262144

typedef struct _RecEvent
{
	struct _RecEvent *next;
	RecEventType type;
	int time;		// Time in ticks.
	void *data1;	// Event: string, Control: Channel name, MIDI: byte buffer.
	void *data2;	// Control: Channel float value, MIDI: # of midi bytes in data1
} RecEvent;

typedef struct _RecordControl
{
	bool recording;
	bool playing;
	RecEvent *curPlayEvent;	  // Used to keep track of current play event during playback.
	RecEvent *curRecEvent;	  // An "index" into the linked list headed by recEventListHdr.
	RecEvent recEventListHdr;
	int numRecEvents;
} RecordControl;

typedef struct _Sequencer
{	
	int timerRes;
	int timerPeriod;
	
	int time;               // current time in ticks
	int nticks;             // holds the # of ticks generated in a timer interrupt
	int fticks;             // fractional # of ticks; acts as accumulator for nticks
	
	int nSamples;			// Used to count the # of samples processed
	                        // during non-realtime rendering.  For every k-cycle,
							// nSamples is increased by 1000 * ksmps.  Whenever
							// the # of samples >= 1ms, events are processed and
							// nSamples is reduced by 1ms worth of samples.
	int sr;					// Should be equal to csound sr.
	
	float bpm;				// Need an arbitrary bpm in order to time stamp
							// events with tick count.
	float ms_per_tick;		
	long microSecPerBeat;	// Dependant on bpm.
	
	void *maxClock;			// Millisecond counter for recording events.
	RecordControl recordControl;
	
	pthread_mutex_t mutex;
	
	CSOUND *csound;				 // Ptr to same CSOUND instance as parent t_csound has.
	
	ChannelGroup *inChannelGroup;// Ptr to same ChannelGroup as parent t_csound has.
	MidiBuffer *midiInputBuffer; // Ptr to same MidiBuffer as parent t_csound has.
	
	byte **ctrlMatrix;			 // Keeps track of MIDI cc values received at csound~ inlets.
	
	char *path;			// points to t_csound->path
	char *defaultPath;	// points to t_csound->defaultPath
	
	char readFilename[MAX_STRING_LENGTH];
	char writeFilename[MAX_STRING_LENGTH];
	
	pthread_t readWriteThread;
	bool readWriteThreadExists;
	
	int active_note_count[16][127]; // Used to keep track of note-on count.
									// Note-on increments and Note-Off decrements count.  Count
									// is used to determine if there are any hanging notes when
									// playback of recorded MIDI events is stopped.
} Sequencer;


Sequencer* Sequencer_New(CSOUND *csound, ChannelGroup *inChannelGroup, MidiBuffer *midiInputBuffer, char *path, char *defaultPath);
void  Sequencer_Free(Sequencer *s);
float Sequencer_CalcMsPerTick(float bpm);
void  Sequencer_SetBPM(Sequencer *s, float bpm);
int   Sequencer_AdvanceTicks(Sequencer *s);
void  Sequencer_TimerCallback(Sequencer *s);
void  Sequencer_SampleBasedTimerCallback(Sequencer *s);
void  Sequencer_AdvanceSampleCount(Sequencer *s, int n);

void Sequencer_StartRecording(Sequencer *s, ChannelGroup *c);
void Sequencer_StopRecording(Sequencer *s);
void Sequencer_StartPlaying(Sequencer *s);
void Sequencer_StopPlaying(Sequencer *s);

void Sequencer_AddCsoundEvent(Sequencer *s, char *buf, bool lock);
void Sequencer_AddControlEvent(Sequencer *s, char *name, float value, bool lock);
void Sequencer_AddStringEvent(Sequencer *s, char *name, char *str, bool lock);
void Sequencer_AddMIDIEvent(Sequencer *s, byte *buf, int nBytes, bool lock);

void Sequencer_FreeRecEvent(RecEvent *re);
void Sequencer_FreeAllRecEvents(Sequencer *s);

void Sequencer_ProcessEvents(Sequencer *s);

// Before calling Sequencer_WriteToFile(), copy the filename to s->writeFilename.
void Sequencer_WriteToFile(Sequencer *s);

// Before calling Sequencer_WriteToFile(), copy the filename to s->readFilename.
void Sequencer_ReadFromFile(Sequencer *s);

#endif