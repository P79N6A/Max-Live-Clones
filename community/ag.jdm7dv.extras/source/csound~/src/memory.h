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

// Memory management functions (basically wrappers to detect memory alloc/dealloc errors).
void* MemoryNew(int size);		// Allocate size bytes of memory.
void* MemoryNewClear(int size);	// Allocate size bytes of memory and clear everything to zero.
void MemoryFree(void *ptr);		// Free memory pointed to by ptr.

// Write len bytes from src to buffer at count offset.  If needed, grow buffer and
// update bufferSize variable.
int BufferWrite(byte **buffer, const void *src, int len, int *count, int *bufferSize);