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
#include "util.h"

void change_directory(const char *path)
{
	#ifdef WINXP
		if(-1 == _chdir(path))
		{
			post("WARNING: Could not chdir to current directory: %s.", path);
	#elif MACOSX
		if(-1 == chdir(path))
		{
			post("WARNING: Could not chdir to current directory: %s.", path);
			switch(errno)
			{
			case ENOTDIR:
				post("ENOTDIR: A component of the path prefix is not a directory.");
				break;
			case ENAMETOOLONG:
				post("ENAMETOOLONG: A component of a pathname exceeded {NAME_MAX} characters, or an entire path name exceeded {PATH_MAX} characters.");
				break;
			case ENOENT:
				post("ENOENT: The named directory does not exist.");
				break;
			case ELOOP:
				post("ELOOP: Too many symbolic links were encountered in translating the pathname.");
				break;
			case EACCES:
				post("EACCES: Search permission is denied for any component of the path name.");
				break;
			case EFAULT:
				post("EFAULT: Path points outside the process's allocated address space.");
				break;
			case EIO:
				post("EIO: An I/O error occurred while reading from or writing to the file system.");
				break;						
			}

	#endif
		}
}

void ConvertToLowerCase(char *str)
{
	int i=0, len=0;
	
	len = strlen(str);
	while(i<len) str[i] = tolower(str[i++]);
}

// Reverses size bytes in src.
void reverseBytes(byte *b, int size)
{
	int i, j, limit = size >> 1;
	
	--size;
	
	for(i=0; i < limit; ++i)
	{
		j = size - i;
		b[i] ^= b[j];
		b[j] ^= b[i];
		b[i] ^= b[j];
	}
}

void reverseNumber(byte *b, int size, bool reverse)
{	
	if(reverse && size > 1) reverseBytes(b, size);
}

int nextPowOf2(int n)
{
	int next = 1;
	
	while(next < n) next <<= 1;
	
	return next;
}

int isPowOf2(int n)
{
	int x = 1;
	
	while(x != 0)
	{
		if(x == n) return 1;
		x <<= 1;
	}
	
	return 0;
}

int hasSpace(char *str)
{
	int i, len;
	
	len = strlen(str);
	for(i=0; i<len; i++)
	{
		if(str[i] == ' ') return 1;
	}
	
	return 0;
}

int isQuoted(char *str)
{
	int len;
	
	len = strlen(str);
	if(str[0] == '"' && str[len-1] == '"') return 1;
	
	return 0;
}

void removeQuotes(char *str)
{
	int i, len;
	
	len = strlen(str);
	
	if(len < 2) return;
	
	for(i=0; i<(len-1); i++)
		str[i] = str[i+1];
	
	str[len-2] = '\0';
}

void addQuotes(char *src, char *dst)
{
	sprintf(dst, "\"%s\"", src);	
}

void openFile(char *path)
{
#ifdef MACOSX
	char  tmpPath[MAX_STRING_LENGTH];
	FSRef fsRef;
	
	snprintf(tmpPath, MAX_STRING_LENGTH-1, "file://%s", path);

	if(FSPathMakeRef((UInt8*)path, &fsRef, false) != noErr)
	{
		error("csound~: Could not convert %s to FSRef.", path);
		return;
	}
	
	if(LSOpenFSRef(&fsRef, NULL) != noErr)
	{
		error("csound~: Could not open file: %s", path);
		return;
	}
#elif WINXP
	int result;
	result = (int) ShellExecute(NULL, NULL, path, NULL, NULL, SW_SHOWNORMAL);
	if(result <= 32)
		error("csound~: Could not open file: %s", path);
#endif
}

bool isAbsolutePath(char *path)
{
#ifdef MACOSX
	return path[0] == '/'; 
#elif WINXP
	return path[1] == ':' && (path[2] == '\\' || path[2] == '/');
#endif
}

bool isAbsoluteMaxPath(char *path)
{
	return (strstr(path, ":/") != NULL);
}

void convertMaxPathToPosixPath(char *src, char *dst, int arraySize)
{
#ifdef WINXP
	strncpy(dst, src, arraySize - 1);
	return;
#else
	char *colonPtr = NULL;
	char volume[arraySize], path[arraySize];
	
	colonPtr = strchr(src, ':');
	
	if(colonPtr)
	{
		// It's a max style path.
		*colonPtr = '\0';
		strncpy(volume, src, arraySize - 1);
		*colonPtr = ':';
		strncpy(path, colonPtr + 1, arraySize - 1);
				
		// Form and output a Unix style path.
		snprintf(dst, arraySize - 1, "/Volumes/%s%s", volume, path);
	} 
#endif
}


int CreateAtomListFromString(char *str, t_atom *atomList, int capacity)
{
	int i=0;
	char *p, *s;
	char whiteSpace[] = " ";

	if(str == NULL || strlen(str) == 0) return 0;

	// strtok() messes the string that it works with, so
	// work on a duplicate of str.

	s = strdup(str); 
	p = strtok(s, whiteSpace);
	atomList[i].a_type = A_SYM;
	atomList[i].a_w.w_sym = gensym(p);
	++i;
	while((p = strtok(NULL, whiteSpace)) != NULL)
	{
		atomList[i].a_type = A_SYM;
		atomList[i].a_w.w_sym = gensym(p);
		++i;
		if(i == capacity)
		{
			error("csound~: CreateAtomListFromString(): Too many atoms in string.");
			break;
		}
	}

	free(s);

	return i;
}