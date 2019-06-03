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


#include "channel.h"

extern int maxChannelStringLength;

unsigned int calcHash(const char *str)
{
	unsigned int h = 0;
	unsigned char *s = (unsigned char *) str;
	while(*s != '\0') h = HASH_MULTIPLIER * h + *s++;
	return h & HASH_TABLE_SIZE_MINUS_ONE;
}

void InitChannelGroup(ChannelGroup *c)
{
	memset(c->hashTable, 0, sizeof(ChannelGroup*) * HASH_TABLE_SIZE);
	pthread_mutex_init(&c->mutex, NULL);
	c->atomList[0].a_type = A_SYM;
	c->atomList[1].a_type = A_FLOAT;
}

void FreeChannelGroup(ChannelGroup *c)
{
	int i;
	ChannelObject *co = NULL, *tmp_co = NULL;
	
	pthread_mutex_lock(&c->mutex);
	
	for(i=0; i<HASH_TABLE_SIZE; i++)
	{
		co = c->hashTable[i];
		while(co)
		{
			tmp_co = co->next;
			FreeChannel(co);
			co = tmp_co;
		}
	}
	
	pthread_mutex_unlock(&c->mutex);
	pthread_mutex_destroy(&c->mutex);
}

void FreeChannel(ChannelObject *co)
{
	if(co->str) MemoryFree(co->str);
	MemoryFree(co);
}

// Find and return ChannelObject if it exists.  If not, create and return it.
ChannelObject* FindCreateChannel(ChannelGroup *c, const char *name, int type, bool lock)
{
	unsigned int h;
	ChannelObject *co = NULL, *tmp_co = NULL;
		
	if(!lock || pthread_mutex_lock(&c->mutex) == 0)
	{
		h = calcHash(name);
		if(h >= HASH_TABLE_SIZE) 
		{
			pthread_mutex_unlock(&c->mutex);
			return NULL;
		}
		co = c->hashTable[h];
		while(co)
		{
			if(strcmp(name, co->name) == 0) break;
			co = co->next;
		}
		if(co == NULL)
		{	
			// No channel object exists with name; let's create one.

			tmp_co = c->hashTable[h];
			co = (ChannelObject*) MemoryNewClear(sizeof(ChannelObject));
			strcpy(co->name, name);
			co->sym = gensym(co->name);
			co->type = type;
			co->value = 0.0;
			co->csoundChanPtr = NULL;
			co->dirty = true;
			co->next = tmp_co;
			c->hashTable[h] = co;

			// If we're creating a string channel, allocate space for the string.
			if(IsStringChannel(co))
				co->str = (char*) MemoryNewClear(maxChannelStringLength);
		}
		if(lock) pthread_mutex_unlock(&c->mutex);
	}
	
	return co;
}

// Find and return ChannelObject if it exists.  If not, return NULL.
ChannelObject* FindChannel(ChannelGroup *c, const char *name, bool lock)
{
	unsigned int h;
	ChannelObject *co = NULL;
		
	if(!lock || pthread_mutex_lock(&c->mutex) == 0)
	{
		h = calcHash(name);
		co = c->hashTable[h];
		while(co)
		{
			if(strcmp(name, co->name) == 0) break;
			co = co->next;
		}
		if(lock) pthread_mutex_unlock(&c->mutex);
	}
	
	return co;
}

void SetChannelVal(ChannelObject* co, float val)
{
	co->value = (MYFLT) val;
	if(co->csoundChanPtr) *co->csoundChanPtr = co->value;
}

void SetChannelString(ChannelObject* co, char *str)
{
	char *chanString = (char*) co->csoundChanPtr;

	if(chanString == NULL || str == NULL) return;
	strncpy(chanString, str, maxChannelStringLength-1);
	strncpy(co->str, str, maxChannelStringLength-1);
}

void GetChannelString(ChannelObject* co, char *str)
{
	char *chanString = (char*) co->csoundChanPtr;

	if(chanString == NULL || str == NULL) return;
	strncpy(str, chanString, maxChannelStringLength-1);
}

void OutputDirtyChannels(ChannelGroup *cg, void *message_outlet)
{
	int i;
	t_atom *atomList = cg->atomList;
	ChannelObject *co = NULL;
	
	if(pthread_mutex_lock(&cg->mutex) == 0)
	{
		for(i=0; i<HASH_TABLE_SIZE; i++)
		{
			co = cg->hashTable[i];
			while(co)
			{
				if(IsControlChannel(co))
				{
					// If this ChannelObject has a legitimate pointer to a
					// Csound channel, and the value of that channel != co->value,
					// then mark it as dirty and set co->value = to that val.
					if(co->csoundChanPtr && *co->csoundChanPtr != co->value)
					{
						co->dirty = true;
						co->value = *co->csoundChanPtr;
					}
					
					// Since output from a Max external is expensive, only
					// do so if this ChannelObject is dirty.
					if(co->dirty)
					{
						co->dirty = false; 
						atomList[0].a_w.w_sym = co->sym;
						atomList[1].a_w.w_float = co->value;
						outlet_list(message_outlet, 0L, 2, atomList);
					}
				}
				else if(IsStringChannel(co))
				{
					// If this ChannelObject has a legitimate pointer to a
					// Csound channel, and the value of that channel != co->value,
					// then mark it as dirty and set co->value = to that val.
					if(co->csoundChanPtr && strcmp((char*)co->csoundChanPtr, co->str) != 0)
					{
						co->dirty = true;
						GetChannelString(co, co->str);
					}
					
					// Since output from a Max external is expensive, only
					// do so if this ChannelObject is dirty.
					if(co->dirty)
					{
						co->dirty = false; 
						atomList[0].a_w.w_sym = co->sym;
						atomList[1].a_w.w_sym = gensym(co->str);
						atomList[1].a_type = A_SYM;                   // 2nd list item is usually float, but not this time.
						outlet_list(message_outlet, 0L, 2, atomList); // Send the message out from a Max outlet.
						atomList[1].a_type = A_FLOAT;                 // Reset 2nd list item to float type, since that's more common.
					}
				}

				co = co->next;
			}
		}	
		pthread_mutex_unlock(&cg->mutex);
	}
}

bool IsControlChannel(ChannelObject *co)
{
	return (co->type & CSOUND_CHANNEL_TYPE_MASK) == CSOUND_CONTROL_CHANNEL;
}

bool IsStringChannel(ChannelObject *co)
{
	return (co->type & CSOUND_CHANNEL_TYPE_MASK) == CSOUND_STRING_CHANNEL;
}
