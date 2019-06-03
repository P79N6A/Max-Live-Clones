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


#include "memory.h"

#ifdef _CSOUND_TILDE_DEBUG
void* MemoryNew(int size)
{
	void *new = NULL;
	
	new = malloc(size);
	if(new == NULL) 
		post("MemoryNew(): malloc() failed to allocate memory");
	
	return new;
}
void* MemoryNewClear(int size)
{
	void *new = NULL;
	
	new = calloc(1, size);
	if(new == NULL) 
		post("MemoryNewClear(): calloc() failed to allocate memory");
		
	return new;
}
void MemoryFree(void *ptr)
{
	if(ptr != NULL)
	{
		if(realloc(ptr, 1)) 
			free(ptr);
		else
		{
			post("MemoryFree(): free() failed.");
			post("Pointer does not point to dynamically allocated memory.");
		}
	}
}
#else
void* MemoryNew(int size) { return malloc(size); }
void* MemoryNewClear(int size) { return calloc(1, size); }
void MemoryFree(void *ptr) { if(ptr != NULL) free(ptr); }
#endif

int BufferWrite(byte **buffer, const void *src, int len, int *count, int *bufferSize)
{
	void *dst = NULL;
	
	// Grow the buffer if buffer is over half full.
	if(*count + len > (*bufferSize / 2)) 
	{
		*bufferSize *= 2;
		*buffer = realloc(*buffer, *bufferSize);
		if(*buffer == NULL) 
		{
			post("BufferWrite():  realloc() failed.");
			return 1;
		}
	}
	
	// Figure out where in buffer to write to.
	dst = *buffer + *count;
	
	// Copy src to buffer.
	memcpy(dst, src, len);
	
	// Update the byte count (i.e. buffer offset).
	*count += len;
		
	return 0;
}