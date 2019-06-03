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
#include "memory.h"

#ifndef _MIDI_H
#define _MIDI_H

#define MIDI_BUFFER_SIZE 1024
#define MIDI_BUFFER_SIZE_MASK 0x3ff // Masking is used instead of modulo to keep indexes within bounds.
#define MAX_MIDI_MESSAGE_SIZE 64

// A circular byte buffer.
typedef struct _MidiBuffer
{
	byte *buffer;	// The byte buffer.
	int writeIndex;
	int readIndex;  
	int bufferSize; // The capacity of the buffer array.
	int size;		// # of elements in buffer.
	bool sysex;		// Used to filter out sysex data received with MidiBuffer_Enqueue().
					// dmp.csound~ does not accept sysex data.
	pthread_mutex_t mutex;
} MidiBuffer;

MidiBuffer* MidiBuffer_Create();
void		MidiBuffer_Free(MidiBuffer *midiBuffer);
bool		MidiBuffer_IsEmpty(MidiBuffer *mb);
bool		MidiBuffer_IsFull(MidiBuffer *mb);
void		MidiBuffer_Enqueue(MidiBuffer *mb, byte b);
void		MidiBuffer_EnqueueBuffer(MidiBuffer *mb, byte* b, int n); // Enqueue n bytes from b into mb->buffer.
byte		MidiBuffer_Dequeue(MidiBuffer *mb);
void		MidiBuffer_DequeueBuffer(MidiBuffer *mb, byte* b, int n); // Dequeue n bytes into b from mb->buffer.
void		MidiBuffer_Clear(MidiBuffer *mb);
int			MidiBuffer_GetSize(MidiBuffer *mb);
int			MidiBuffer_SpaceRemaining(MidiBuffer *mb);
bool		MidiBuffer_Peek(MidiBuffer *mb, byte *b);

#endif