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

void change_directory(const char *path);

void ConvertToLowerCase(char *str);

// Reverses size bytes in src.
void reverseBytes(byte *b, int size);

void reverseNumber(byte *b, int size, bool reverse);

int nextPowOf2(int n);
int isPowOf2(int n);
int hasSpace(char *str);
int isQuoted(char *str);
void removeQuotes(char *str);
void addQuotes(char *src, char *dst); // Make sure dst has enough room for 2 more chars.
void openFile(char *path);
bool isAbsolutePath(char *path);
bool isAbsoluteMaxPath(char *path);

// Convert a Max style absolute path (e.g. Macintosh HD:/Users/George/hello.wav) to POSIX style path.
// If src is not a Max style absolute path, do nothing.
void convertMaxPathToPosixPath(char *src, char *dst, int arraySize);

int CreateAtomListFromString(char *str, t_atom *atomList, int capacity);