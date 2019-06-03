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

#include "midi.h"

MidiBuffer* MidiBuffer_Create()
{
	MidiBuffer *mb = NULL;
	
	mb = (MidiBuffer *) MemoryNewClear(sizeof(MidiBuffer));
	mb->buffer = (byte *) MemoryNewClear(sizeof(byte) * MIDI_BUFFER_SIZE);
	mb->writeIndex = 0;
	mb->readIndex = 0;
	mb->bufferSize = MIDI_BUFFER_SIZE;
	mb->size = 0;
	pthread_mutex_init(&mb->mutex, NULL);
	
	return mb;
}

void MidiBuffer_Free(MidiBuffer *mb)
{
	pthread_mutex_destroy(&mb->mutex);
	MemoryFree(mb->buffer);
	MemoryFree(mb);
}

bool MidiBuffer_IsEmpty(MidiBuffer *mb)
{
	return mb->readIndex == mb->writeIndex;
}

bool MidiBuffer_IsFull(MidiBuffer *mb)
{
	//return (mb->writeIndex + 1) % mb->bufferSize == mb->readIndex;
	return ((mb->writeIndex + 1) & MIDI_BUFFER_SIZE_MASK) == mb->readIndex;
}

// When mb->sysex == true, any data bytes recieved through this function
// will not be added to the buffer.  If 0xf0 (begin sysex data) is received,
// mb->sysex is set to true.  If 0xf7 (end sysex data) is received, mb->sysex
// is set to false.  
void MidiBuffer_Enqueue(MidiBuffer *mb, byte b)
{
	if(pthread_mutex_lock(&mb->mutex) == 0)
	{
		if(b == 0xf0) mb->sysex = true;
		if(!mb->sysex && !MidiBuffer_IsFull(mb))
		{
			mb->buffer[mb->writeIndex] = b;
			//mb->writeIndex = (mb->writeIndex + 1) % mb->bufferSize;
			mb->writeIndex = (mb->writeIndex + 1) & MIDI_BUFFER_SIZE_MASK;
			mb->size++;
		}
		if(b == 0xf7) mb->sysex = false;
		pthread_mutex_unlock(&mb->mutex);
	}
}

// Enqueue n bytes from b into mb->buffer.  b should contain only 1 complete MIDI message.
void MidiBuffer_EnqueueBuffer(MidiBuffer *mb, byte* b, int n)
{
	int i;
	byte status = 0;
		
	status = b[0] & 0xf0;
	switch(status)
	{
	case 0x80: // Note-off (3 bytes)
	case 0x90: // Note-on (3 bytes)
	case 0xA0: // Aftertouch (3 bytes)
	case 0xB0: // Control Change (3 bytes)
	case 0xE0: // Pitch Bend (3 bytes)
		if(3 != n) return;
		break;
	case 0xC0: // Program Change (2 bytes)
	case 0xD0: // Channel Aftertouch (2 bytes)
		if(2 != n) return;
		break;
	default:
		return; // Don't add disallowed types of MIDI messages.
	}	
	
	if(pthread_mutex_lock(&mb->mutex) == 0)
	{
		// If there isn't enough space for all bytes stored in b, then don't enqueue anything.
		if(n <= MidiBuffer_SpaceRemaining(mb))
		{
			for(i=0; i<n; i++)
			{
				mb->buffer[mb->writeIndex] = b[i];
				//mb->writeIndex = (mb->writeIndex + 1) % mb->bufferSize;
				mb->writeIndex = (mb->writeIndex + 1) & MIDI_BUFFER_SIZE_MASK;
			}
			mb->size += n;
		}
		pthread_mutex_unlock(&mb->mutex);
	}
}

byte MidiBuffer_Dequeue(MidiBuffer *mb)
{
	byte b = 0;
	
	if(pthread_mutex_lock(&mb->mutex) == 0)
	{
		if(!MidiBuffer_IsEmpty(mb))
		{
			b = mb->buffer[mb->readIndex];
			//mb->readIndex = (mb->readIndex + 1) % mb->bufferSize;
			mb->readIndex = (mb->readIndex + 1) & MIDI_BUFFER_SIZE_MASK;
			mb->size--;
		}
		pthread_mutex_unlock(&mb->mutex);
	}
	
	return b;
}

void MidiBuffer_DequeueBuffer(MidiBuffer *mb, byte* b, int n)
{	
	int i;
	
	if(pthread_mutex_lock(&mb->mutex) == 0)
	{
		if(n <= mb->size)
		{
			for(i=0; i<n; i++)
			{
				b[i] = mb->buffer[mb->readIndex];
				//mb->readIndex = (mb->readIndex + 1) % mb->bufferSize;
				mb->readIndex = (mb->readIndex + 1) & MIDI_BUFFER_SIZE_MASK;
			}
			mb->size -= n;
		}
		pthread_mutex_unlock(&mb->mutex);
	}
}

void MidiBuffer_Clear(MidiBuffer *mb)
{
	if(pthread_mutex_lock(&mb->mutex) == 0)
	{
		mb->readIndex = mb->writeIndex;
		mb->size = 0;
		mb->sysex = false;
		pthread_mutex_unlock(&mb->mutex);
	}
}

int MidiBuffer_GetSize(MidiBuffer *mb)
{
	return mb->size;
}

// Circular buffer implementation allows for capacity for bufferSize - 1.
int MidiBuffer_SpaceRemaining(MidiBuffer *mb)
{
	return (mb->bufferSize - 1) - mb->size;
}

// Return true and copy the current read byte to *b if mb is not empty.
// Otherwise, just return false.
bool MidiBuffer_Peek(MidiBuffer *mb, byte *b)
{
	if(!MidiBuffer_IsEmpty(mb))
	{
		*b = mb->buffer[mb->readIndex];
		return true;
	}
	else return false;
}
