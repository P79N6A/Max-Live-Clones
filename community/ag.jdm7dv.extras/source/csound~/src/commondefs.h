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

 
#ifndef _COMMONDEFS_H
#define _COMMONDEFS_H

#define DEFAULT_NUM_SIGNALS 2
#define MAX_ARGS 64
#define MAX_STRING_LENGTH 1024
#define MAX_CHAN_NAME_LENGTH 64
#define MAX_EVENT_MESSAGE_SIZE 1024
#define DEFAULT_CLOCK_INTERVAL 1
#define RECORD_CLOCK_INTERVAL 1
#define DEFAULT_SAMPLE_RATE 44100
#define DEFAULT_STOPPAGE_TIME 8 // 8 seconds
#define MAX_ATOM_LIST_SIZE 32

#ifdef WINXP
typedef int bool;
#include "pthread.h"
#include <direct.h>
#include <malloc.h>
#pragma warning(disable : 4996 142) // disable deprecated functions and benign redefinition warnings
typedef unsigned char byte;
#define snprintf _snprintf
#endif

#ifdef MACOSX
typedef unsigned char byte;
typedef unsigned long DWORD;
#endif

#ifndef FL
#define FL(x) x##f
#endif

#include "ext.h"
#include "csound.h"

#endif