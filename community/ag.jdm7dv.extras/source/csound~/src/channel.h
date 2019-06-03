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
#include <pthread.h>

#ifndef _CHANNEL_H
#define _CHANNEL_H

#define HASH_TABLE_SIZE				512	// Must be power of 2 for calcHash() to work.
#define HASH_TABLE_SIZE_MINUS_ONE	511    
#define HASH_MULTIPLIER				31

typedef struct _ChannelObject
{
	struct _ChannelObject *next;
	int type;						// Can be bitwise or of: CSOUND_INPUT_CHANNEL, CSOUND_CONTROL_CHANNEL, CSOUND_STRING_CHANNEL
	char name[MAX_CHAN_NAME_LENGTH];
	t_symbol *sym;					// Since gensym() is expensive, create once and store here.
	MYFLT value;
	char *str;						// If CSOUND_STRING_CHANNEL, then string will be stored here.
	bool dirty;
	MYFLT *csoundChanPtr;
} ChannelObject;

typedef struct _ChannelGroup
{
	ChannelObject *hashTable[HASH_TABLE_SIZE];
	pthread_mutex_t mutex;
	t_atom atomList[2];
} ChannelGroup;

unsigned int calcHash(const char *str);
void InitChannelGroup(ChannelGroup *c);
void FreeChannelGroup(ChannelGroup *c);

void FreeChannel(ChannelObject *co);

// Find and return ChannelObject if it exists.  If not, create
// and return it.
ChannelObject* FindCreateChannel(ChannelGroup *c, const char *name, int type, bool lock);

// Find and return ChannelObject if it exists.  If not, return NULL.
ChannelObject* FindChannel(ChannelGroup *c, const char *name, bool lock);

void SetChannelVal(ChannelObject* co, float val); // Set co->value (and csoundChanPtr if it's not NULL) to val.
void SetChannelString(ChannelObject* co, char *str); // Set the string stored at co->csoundChanPtr = str.
void GetChannelString(ChannelObject* co, char *str); // Set str = the string stored at co->csoundChanPtr.

void OutputDirtyChannels(ChannelGroup *cg, void *message_outlet);

bool IsControlChannel(ChannelObject *co);
bool IsStringChannel(ChannelObject *co);

#endif