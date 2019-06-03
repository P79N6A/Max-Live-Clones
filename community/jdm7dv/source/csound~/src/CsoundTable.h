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

#include "ext.h"
#include "z_dsp.h"
#include "csound.h"
#include "memory.h"
#include "sndfile.h"
#include "util.h"
#include "buffer.h"	// this defines our buffer's data structure and other goodies
#include "commondefs.h"

#ifndef _CSOUNDTABLE_H
#define _CSOUNDTABLE_H

typedef struct _CsoundTable
{
	int tableNum;
	int channels;
	int samples;
	int frames;
	MYFLT *table;
} CsoundTable;

// Return TRUE if tableNum exists, FALSE otherwise.  NOTE: ct == NULL is okay.
// If ct != NULL, Csound table info will be stored there.
int CsoundTable_GetTable(CSOUND *csound, int tableNum, CsoundTable *ct);

/*
   If tableNum doesn't exist, it will be created.  
   If tableNum exists, resize == TRUE, and new size is different power of 2, then it will be replaced.
   If sizeTime == 0, then audio data will be read from offsetTime until end of file or until Csound table is full.
   
   Return values:
       0 on success.
      -1 if file cannot be opened/found.
       1 if offset is greater than length of file.
       2 on failure to read audio data from file.
*/   
int CsoundTable_LoadAudioFile(CSOUND *csound, char *filename, int tableNum, int channel, int resize, float offsetTime, float sizeTime);

/*
   Similar to CsoundTable_LoadAudioFile() in functionality, except this function reads audio data from MSP buffer~'s.
   A negative offsetTime or sizeTime means that time is in frames.
   A positive offsetTime or sizeTime means that time is in seconds.

   Since there is no way to tell how many channels a Csound table has:
   -> Assume every Csound table has only 1 channel.
   -> sourceChannel range is {1, # of channels in buffer~}
   -> If sourceChannel == 0, then assume Csound table has same # of channels as buffer~, then copy all channels.
   
   Return values:
        0 on success.
       -1 if no [buffer~] with name bufferSymbol exists.
        1 if offset is greater than length of [buffer~].
        2 if could not create csound table.
*/ 
int CsoundTable_ReadBufferTilde(CSOUND *csound, t_symbol *bufferSymbol, int tableNum, int sourceChannel, int resize, float offsetTime, float sizeTime);

/*
   Copies audio data from an MSP buffer~ to a Csound table.
   A negative offsetTime or sizeTime means that time is in frames.
   A positive offsetTime or sizeTime means that time is in seconds.
  
   Since there is now way to tell how many channels a Csound table has:
   -> Assume every Csound table has only 1 channel.
   -> targetChannel range is {1, # of channels in buffer~}
   -> If sourceChannel == 0, then assume Csound table has same # of channels as buffer~, then copy all channels.
*/ 
int CsoundTable_WriteBufferTilde(CSOUND *csound, t_symbol *bufferSymbol, int tableNum, int targetChannel, float offsetTime, float sizeTime);

// Returns 0 on success, 1 if table doesn't exist, 2 if index out of bounds.
int CsoundTable_Get(CSOUND *csound, int tableNum, int index, MYFLT *value);

// Returns 0 on success, 1 if table doesn't exist, 2 if index out of bounds.
int CsoundTable_Set(CSOUND *csound, int tableNum, int index, MYFLT value);

/*
   Fill the Csound table index by tableNum with interleaved audio from buffers.
   It the table doesn't exist, don't do anything.
   If it's too small, create it.
   Remember, the csound instance must have gone through at least 1 k-cycle for creation/replacement of tables to work.
   Returns -1 on failure, 0 on success, and 1 if successfull (with table replacement).
*/
int CsoundTable_FillTable(CSOUND *csound, int tableNum, MYFLT **buffer, int channels, int frames);

#endif