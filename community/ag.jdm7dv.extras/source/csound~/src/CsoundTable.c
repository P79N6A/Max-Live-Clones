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

#include "CsoundTable.h"

int CsoundTable_GetTable(CSOUND *csound, int tableNum, CsoundTable *ct)
{
	int samples;
	MYFLT *table = NULL;
	
	if(ct) ct->samples = -1; // If csoundGetTable fails, allow use of (ct->samples == -1) to signify failure.
	samples = csoundGetTable(csound, &table, tableNum);
	if(samples == -1) return FALSE;
	if(ct)
	{
		ct->tableNum = tableNum;
		ct->table = table;
		ct->channels = 1;       // Cannot get channel info yet; assume mono.
		ct->samples = samples;
		ct->frames = samples;   // Cannot get channel info yet; assume # of frames == # of samples.
	}
	return TRUE;
}

int CsoundTable_LoadAudioFile(CSOUND *csound, char *filename, int tableNum, int channel, int resize, float offsetTime, float sizeTime)
{
	CsoundTable ct;
	char eventStr[MAX_EVENT_MESSAGE_SIZE];
	SF_INFO sf;
	SNDFILE *sf_ptr = NULL;
	int offsetFrames, sizeFrames, sizeSamples;
	int i, tmp, framesToRead, framesRead=0, result=0;
	MYFLT *buffer = NULL;
    
	if(!CsoundTable_GetTable(csound, tableNum, &ct))
	{   // tableNum doesn't exist.
		
		if((sf_ptr = sf_open(filename, SFM_READ, &sf)) == NULL)
		{
			error("csound~: Unable to open %s.", filename);  return -1;
		}
		
		if(channel > 0 && channel > sf.channels) channel = sf.channels;
		
		offsetFrames = (int)(offsetTime * (float) sf.samplerate);
		if(offsetFrames >= sf.frames) 
		{
			error("csound~: Offset time is greater than size of audio file.");  sf_close(sf_ptr);  return 1;
		}
		
		if(sizeTime > 0.0f) 
		{
			// User has specified the amount of frames to read in seconds.
			// If necessary, change sizeFrames so that (offsetFrames + sizeFrames) <= sf.frames.
			sizeFrames = (int)(sizeTime * (float) sf.samplerate);
			if((offsetFrames + sizeFrames) > sf.frames) sizeFrames = sf.frames - offsetFrames;
		}
		else sizeFrames = sf.frames - offsetFrames; // User didn't specify amount of frames to read.  Read from offset to end of file.
		
		// Get next power of two greater than the total # of frames to read.
		if(channel > 0) ct.samples = sizeFrames;
		else            ct.samples = sizeFrames * sf.channels;
		ct.samples = nextPowOf2(ct.samples) + 1; // Add guard point for interpolating opcodes.
		
		sf_close(sf_ptr);
		
		snprintf(eventStr, MAX_EVENT_MESSAGE_SIZE-1, "f %d 0 %d 1 \"%s\" %f 0 %d", tableNum, ct.samples, filename, offsetTime, channel);
		csoundInputMessage(csound, eventStr);
		csoundPerformKsmps(csound); // Process one k-cycle to force table replacement now.
	}
	else // tableNum exists
	{   
		if((sf_ptr = sf_open(filename, SFM_READ, &sf)) == NULL)
		{
			error("csound~: Unable to open %s.", filename);  return -1;
		}
		
		if(channel > 0 && channel > sf.channels) channel = sf.channels;
		
		offsetFrames = (int)(offsetTime * (float) sf.samplerate);
		if(offsetFrames >= sf.frames) 
		{
			error("csound~: Offset time is greater than size of audio file."); sf_close(sf_ptr); return 1;
		}
		
		if(sizeTime > 0.0f) 
		{
			// User has specified the amount of frames to read in seconds.
			// If necessary, change sizeFrames so that (offsetFrames + sizeFrames) <= sf.frames.
			sizeFrames = (int)(sizeTime * (float) sf.samplerate);
			if((offsetFrames + sizeFrames) > sf.frames) sizeFrames = sf.frames - offsetFrames;
		}
		else sizeFrames = sf.frames - offsetFrames; // User didn't specify amount of frames to read.  Read from offset to end of file.
		
		if(channel == 0) sizeSamples = sizeFrames * sf.channels;
		else             sizeSamples = sizeFrames;
		
		if(resize)
		{
			// Replace existing table.
			sizeSamples = nextPowOf2(sizeSamples) + 1; 
			snprintf(eventStr, MAX_EVENT_MESSAGE_SIZE-1, "f %d 0 %d 1 \"%s\" %f 0 %d", tableNum, sizeSamples, filename, offsetTime, channel);
			csoundInputMessage(csound, eventStr);
			csoundPerformKsmps(csound); // Process one k-cycle to force table replacement now.
		}
		else
		{	
			// Just read in as many samples as possible into existing table.
			
			if(channel > 0 && sizeFrames > ct.samples)
				framesToRead = ct.samples;
			else if(channel == 0 && sizeSamples > ct.samples) 
				framesToRead = ct.samples / sf.channels;
			else 
				framesToRead = sizeFrames;
		
			buffer = (MYFLT*) MemoryNewClear(sizeof(MYFLT) * framesToRead * sf.channels); // Create a temporary buffer for audio data.
			sf_seek(sf_ptr, offsetFrames, SEEK_SET);                                      // Seek into the file by offsetFrames.
			
#ifdef USE_DOUBLE
				framesRead = sf_readf_double(sf_ptr, (double*)buffer, framesToRead);
#else
				framesRead = sf_readf_float(sf_ptr, buffer, framesToRead);
#endif		
			if(framesRead != framesToRead) 
			{
				error("csound~: Reading audio data from %s failed.", filename);
				result = 2;
			}
			else
			{
				memset(ct.table, 0, sizeof(MYFLT) * ct.samples);   // Zero out the Csound table.
			
				if(channel == 0) 
					memcpy(ct.table, buffer, sizeof(MYFLT) * framesRead * sf.channels); // Copy all channels as interleaved data.
				else
				{
					tmp = channel-1;
					for(i=0; i<framesRead; i++)
						ct.table[i] = buffer[i*sf.channels + tmp]; // Copy only the specified channel's data.
				}
			}	
			MemoryFree(buffer);
		}
		sf_close(sf_ptr);
	}
	
	return result;
}


int CsoundTable_WriteBufferTilde(CSOUND *csound, t_symbol *bufferSymbol, int tableNum, int targetChannel, float offsetTime, float sizeTime)
{
	CsoundTable ct;
	int i, tmp, offsetFrames, offsetSamples, sizeFrames;
	float *buffer = NULL;
	t_buffer *b = NULL; // Pointer to a MSP buffer~ object.
	static t_symbol *ps_buffer = NULL;
	static firstTime = TRUE;
	long saveinuse;
	MYFLT csoundSR = csoundGetSr(csound);
	
	if(firstTime)
	{
		firstTime = FALSE;
		ps_buffer = gensym("buffer~");
	}
	
	// Get a pointer to the buffer~ object with name bufferSymbol.
	if(!((b = (t_buffer *)(bufferSymbol->s_thing)) && ob_sym(b) == ps_buffer && b->b_valid == TRUE))
	{
		error("csound~: No buffer~ with name \"%s\" exists.", bufferSymbol->s_name);  return -1;
	}
	
	// Get a pointer to the Csound table corresponding to tableNum.	
	if(!CsoundTable_GetTable(csound, tableNum, &ct)) 
	{
		error("csound~: Csound table #%d does not exist.", tableNum);  return -1;
	}
	
	// Mark the buffer~ as "in use".
	saveinuse = b->b_inuse;
	b->b_inuse = TRUE;
	buffer = b->b_samples;
	
	if(targetChannel < 0 || targetChannel > b->b_nchans)
	{
		error("csound~: buffer~ object %s doesn't have a channel #%d.", bufferSymbol->s_name, targetChannel);  b->b_inuse = saveinuse;  return -1;
	}
	
	// If offsetTime or sizeTime is positive, then they are in seconds.  Otherwise, they are in frames.
	
	if(offsetTime >= 0) offsetFrames = (float)((MYFLT)offsetTime * csoundSR);
	else                offsetFrames = (int)-offsetTime;
	
	if(sizeTime >= 0) sizeFrames = (float)((MYFLT)sizeTime * csoundSR);
	else              sizeFrames = (int)-sizeTime;	
	
	if(offsetFrames >= ct.frames) 
	{
		error("csound~: Offset time is greater than size of Csound table #%d.", tableNum);  b->b_inuse = saveinuse;  return 1;
	}
	
	if(targetChannel == 0)
	{	// Copying all channels.
		// For now, assume that the Csound table has the same # of channels as the buffer~.
		ct.channels = b->b_nchans;
		ct.frames = ct.samples / ct.channels;
	}
	else
	{
		ct.channels = 1;
		ct.frames = ct.samples;
	}
	
	offsetSamples = offsetFrames * ct.channels;

	if(sizeFrames == 0 || ((offsetFrames + sizeFrames) > ct.frames))
		sizeFrames = ct.frames - offsetFrames; // User didn't specify amount of frames to read.  Read from offset to end of file.

	// If sizeFrames is greater than the # of frames in the target buffer~, then sizeFrames = target buffer~'s frame size.
	if(sizeFrames > b->b_frames) sizeFrames = b->b_frames; 
	
	// Copy the audio data.
	if(targetChannel == 0)
	{
		for(i=0; i<(sizeFrames * b->b_nchans); i++)  buffer[i] = ct.table[i + offsetSamples];
	}
	else
	{
		tmp = targetChannel-1;
		for(i=0; i<sizeFrames; i++)  buffer[i*b->b_nchans + tmp] = ct.table[i + offsetFrames];
	}
	
	// Release the buffer~ object.
	b->b_inuse = saveinuse;
	
	return 0;
}


int CsoundTable_ReadBufferTilde(CSOUND *csound, t_symbol *bufferSymbol, int tableNum, int sourceChannel, int resize, float offsetTime, float sizeTime)
{
	CsoundTable ct;
	char eventStr[MAX_EVENT_MESSAGE_SIZE];
	int offsetFrames, sizeFrames;
	int i, size, tmp;
	float *buffer = NULL;
	t_buffer *b = NULL; // Pointer to a MSP buffer~ object.
	static t_symbol *ps_buffer = NULL;
	static firstTime = TRUE;
	long saveinuse;
	
	if(firstTime)
	{
		firstTime = FALSE;
		ps_buffer = gensym("buffer~");
	}
	
	// Get a pointer to the buffer~ object with name bufferSymbol.
	if(!((b = (t_buffer *)(bufferSymbol->s_thing)) && ob_sym(b) == ps_buffer && b->b_valid == TRUE))
	{
		error("csound~: No buffer~ with name \"%s\" exists.", bufferSymbol->s_name);
		return -1;
	}
	
	// Get a pointer to the Csound table corresponding to tableNum.	
	if(!CsoundTable_GetTable(csound, tableNum, &ct))
	{   // tableNum doesn't exist.
		
		saveinuse = b->b_inuse;
		b->b_inuse = TRUE;
		buffer = b->b_samples;
		if(sourceChannel > 0 && sourceChannel > b->b_nchans) sourceChannel = b->b_nchans;
		if(sourceChannel > 0) size = b->b_frames;
		else                  size = b->b_frames * b->b_nchans;
		
		// If offsetTime or sizeTime is positive, then they are in seconds.  Otherwise, they are in frames.
		if(offsetTime >= 0)	offsetFrames = (int)(offsetTime * (float) b->b_sr);
		else                offsetFrames = (int)-offsetTime;
		if(offsetFrames >= b->b_frames) 
		{
			error("csound~: Offset time is greater than size of buffer~ %s.", bufferSymbol->s_name); b->b_inuse = saveinuse; return 1;
		}
		
		if(sizeTime == 0.0f) 
			sizeFrames = b->b_frames - offsetFrames; // User didn't specify amount of frames to read.  Read from offset to end of file.
		else if(sizeTime < 0.0f)
		{
			sizeFrames = (int)-sizeTime; // sizeTime is < 0.  User specified amount of frames to read. 
			if((offsetFrames + sizeFrames) > b->b_frames) sizeFrames = b->b_frames - offsetFrames;  // If too many frames, read from offset to end of file.
		}
		else if(sizeTime > 0.0f)
		{
			// User has specified the amount of frames to read in seconds.
			// If necessary, change sizeFrames so that (offsetFrames + sizeFrames) <= sf.frames.
			sizeFrames = (int)(sizeTime * (float) b->b_sr);
			if((offsetFrames + sizeFrames) > b->b_frames) sizeFrames = b->b_frames - offsetFrames;
		}
		
		// Get next power of two greater than the total # of frames to read.
		if(sourceChannel > 0) ct.samples = sizeFrames;
		else                  ct.samples = sizeFrames * b->b_nchans;
		ct.samples = nextPowOf2(ct.samples) + 1; // Add guard point for interpolating opcodes.
		
		snprintf(eventStr, MAX_EVENT_MESSAGE_SIZE-1, "f %d 0 %d 7 0 %d 0", tableNum, ct.samples, ct.samples);
		csoundInputMessage(csound, eventStr);
		csoundPerformKsmps(csound); // We need to process one k-cycle to force table creation now.
		
		// tableNum should exist now; let's get a pointer to it.
		if(CsoundTable_GetTable(csound, tableNum, &ct))
		{
			// Let's copy the audio data into the Csound table.
			if(sourceChannel == 0) 
			{
				// Copy all channels as interleaved data.
				tmp = offsetFrames * b->b_nchans;
				for(i=0; i<(sizeFrames * b->b_nchans); i++) ct.table[i] = buffer[i+tmp]; 
			}
			else
			{
				// Copy only the specified channel's data.
				tmp = sourceChannel-1+(offsetFrames * b->b_nchans);
				for(i=0; i<sizeFrames; i++) ct.table[i] = buffer[i*b->b_nchans + tmp]; 
			}
		}
		
		b->b_inuse = saveinuse;
	}
	else // tableNum exists
	{   
		saveinuse = b->b_inuse;
		b->b_inuse = TRUE;
		buffer = b->b_samples;
		if(sourceChannel > 0 && sourceChannel > b->b_nchans) sourceChannel = b->b_nchans;
		if(sourceChannel > 0) size = b->b_frames;
		else                  size = b->b_frames * b->b_nchans;
		
		if(offsetTime >= 0)	offsetFrames = (int)(offsetTime * (float) b->b_sr);
		else                offsetFrames = (int)-offsetTime;
		if(offsetFrames >= b->b_frames) 
		{
			error("csound~: Offset time is greater than size of buffer~ %s.", bufferSymbol->s_name); b->b_inuse = saveinuse; return 1;
		}
		
		if(sizeTime == 0.0f) 
			sizeFrames = b->b_frames - offsetFrames; // User didn't specify amount of frames to read.  Read from offset to end of file.
		else if(sizeTime < 0.0f)
		{
			sizeFrames = (int)-sizeTime;
			if((offsetFrames + sizeFrames) > b->b_frames) sizeFrames = b->b_frames - offsetFrames;
		}
		else if(sizeTime > 0.0f) 
		{
			// User has specified the amount of frames to read in seconds.
			// If necessary, change sizeFrames so that (offsetFrames + sizeFrames) <= sf.frames.
			sizeFrames = (int)(sizeTime * (float) b->b_sr);
			if((offsetFrames + sizeFrames) > b->b_frames) sizeFrames = b->b_frames - offsetFrames;
		}
		
		if(sourceChannel > 0) size = sizeFrames;
		else                  size = sizeFrames * b->b_nchans;
		
		if(resize)
		{
			// Replace the table with one that is the same size as the amount of data we want to copy.
			size = nextPowOf2(size) + 1; 
			snprintf(eventStr, MAX_EVENT_MESSAGE_SIZE-1, "f %d 0 %d 7 0 %d 0", tableNum, size, size);
			csoundInputMessage(csound, eventStr);
			csoundPerformKsmps(csound); // We need to process one k-cycle to force table replacement now.
			
			// tableNum has been replaced; let's get a pointer to the new table.
			if(!CsoundTable_GetTable(csound, tableNum, &ct)) { b->b_inuse = saveinuse; return 2; }
		}
		else if(size > ct.samples)
		{
			size = ct.samples;
			if(sourceChannel > 0) sizeFrames = ct.samples;
			else                  sizeFrames = ct.samples / b->b_nchans;
		}

		// Let's copy the audio data into the Csound table.
		if(sourceChannel == 0) 
		{
			// Copy all channels as interleaved data.
			tmp = offsetFrames * b->b_nchans;
			for(i=0; i<(sizeFrames * b->b_nchans); i++) ct.table[i] = buffer[i+tmp]; 
		}
		else
		{
			// Copy only the specified channel's data.
			tmp = sourceChannel-1+(offsetFrames * b->b_nchans);
			for(i=0; i<sizeFrames; i++) ct.table[i] = buffer[i*b->b_nchans + tmp]; 
		}
		
		b->b_inuse = saveinuse;
	}
	return 0;
}

int CsoundTable_Get(CSOUND *csound, int tableNum, int index, MYFLT *value)
{
	CsoundTable ct;
	
	if(!CsoundTable_GetTable(csound, tableNum, &ct)) return 1;
	if(index < ct.samples) 
		*value = ct.table[index];
	else
		return 2;
	return 0;
}

int CsoundTable_Set(CSOUND *csound, int tableNum, int index, MYFLT value)
{
	CsoundTable ct;
	
	if(!CsoundTable_GetTable(csound, tableNum, &ct)) return 1;
	if(index < ct.samples) 
		ct.table[index] = value;
	else
		return 2;
	return 0;
}

// Fill the Csound table index by tableNum with interleaved audio from buffers.
// If the table doesn't exist, don't do anything.
// If it's too small, create it.
// Remember, the csound instance must have gone through at least 1 k-cycle for
// creation/replacement of tables to work.
// This function will process 1 k-cycle if the existing table is too small.
// Returns -1 on failure, 0 on success, and 1 if successfull (with table replacement).
int CsoundTable_FillTable(CSOUND *csound, int tableNum, MYFLT **buffers, int channels, int frames)
{
	CsoundTable ct;
	char eventStr[MAX_EVENT_MESSAGE_SIZE];
	int i, chan, size, originalSize, count=0;
	
	CsoundTable_GetTable(csound, tableNum, &ct); 
	originalSize = ct.samples;
	if(ct.samples != -1)
	{  
		// If the existing table is too small for the new audio file, then replace it.
		size = frames * channels;
		if(size > ct.samples)
		{
			size = nextPowOf2(size) + 1; 
			snprintf(eventStr, MAX_EVENT_MESSAGE_SIZE-1, "f %d 0 %d 7 0 %d 0", tableNum, size, size);
			csoundInputMessage(csound, eventStr);
			
			// We need to process one k-cycle in order to force the replacement to take place now.
			csoundPerformKsmps(csound);
			
			// Since we replaced the table, get the new pointer.
			ct.samples = csoundGetTable(csound, &ct.table, tableNum); 
		}
		
		// Fill the Csound table.
		for(i=0; i<frames; i++)
			for(chan=0; chan<channels; chan++)
			{
				ct.table[count++] = buffers[chan][i];
				if(count == ct.samples) break;
			}
	
		if(originalSize == ct.samples) 
			return 0;
		else
			return 1;
	}
	
	return -1;
}

