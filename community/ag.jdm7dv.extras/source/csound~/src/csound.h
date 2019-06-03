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
#include "ext.h"
#include "z_dsp.h"
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include "csound.h"
#include "channel.h"
#include "memory.h" 
#include "util.h"
#include "CsoundTable.h"

#ifdef MACOSX
	#include <pthread.h>
#endif

#include "midi.h"
#include "sequencer.h"

typedef struct _csound
{
	t_pxobject l_obj;
	int sr;					// MSP sample rate.
	int csound_sr;			// Csound sample rate.
	float one_div_sr;		// 1 / current MSP sample rate.
	int vectorSize;			// The current MSP vector size.
	int numInSignals;       // The # of input vectors for our external.
	int numOutSignals;	    // The # of output vectors for our external.
	int numPerformArgs;		// Used to keep track of # of args sent to our csound_perform() method.
	
	void *compiled_bang_outlet;  // When a csd or orc/sco is successfully compiled, a bang is sent out this outlet.
	void *done_bang_outlet; // Whenever a Csound performances finishes, a bang is sent out bang_outlet.
	void *midi_outlet;		// An outlet for MIDI data output from Csound.
	void *message_outlet;	// An outlet for Csound outvalue lists.
	float **in, **out;		// Array of pointers to MSP input/outpu vectors.
	
	int numArgs;			// The # of args in args[] array.
	char *args[MAX_ARGS];	// Contains the args that will be passed to Csound.
	
	char *path;             // Contains an absolute path to a directory which will be used
	                        // as the current directory for pathnames without a starting "/".
				
	short defaultPathID;
	char *defaultPath;
	char *orcPath, *scoPath, *csdPath;
	bool csdInPath;         // If the args[] has a csd file, this will be TRUE. 
	
	CSOUND *csound;			// Pointer to an instance of Csound.
	
	int chans;				// # of Csound audio input/output channels.
	int ksmps;				// Csound samples per k-cycle.
	int in_index;			// Sample index into Csound's input buffer.  Gets reset to zero whenever index == ksmps.
	int out_index;			// Sample index into Csound's output buffer.
	MYFLT scale;			// The scaling factor for MSP audio data that is going to Csound.
	MYFLT oneDivScale;		// The scaling factor for Csound audio data that is going to MSP.
	bool scaleAudioData;	// If true, then audio input to Csound is scaled to 0dB and audio output is divided
							// by 0dB level.  
	bool evenlyDivisible;	// TRUE if ksmps evenly divides Max vector size.
	bool compiled;			// TRUE if csoundCompile() returned TRUE.
	bool performanceFinished;
	bool audioOutputFileInArgList;  // TRUE if -oSomeFilename was in arg list.
	bool renderingToFile;           // TRUE if we are rendering to a file (no real-time audio output).
	pthread_mutex_t performMutex;	// Used to control access to Csound while performing.
	
	bool midiInputEnabled;
	bool midiOutputEnabled;
	bool valueInputEnabled;			// If TRUE, then Csound will call our input value callback function.
	bool valueOutputEnabled;		// If TRUE, then Csound will call our output value callback function.
	bool messageOutputEnabled;		// If TRUE, then Csound messages will be output to the Max window.
	
	bool valueOutputOverdrive;		// If TRUE, then output values from Csound will be output immediately
									// (rather than at CSOUND_CLOCK_INTERVAL ms intervals).
	
	char *textBuffer;				// Stores Csound text output.
	pthread_mutex_t textBufferMutex;// Controls access to textBuffer.
	
	ChannelGroup inChannelGroup;    // Used to store input channel/value pairs.
	ChannelGroup outChannelGroup;   // Used to store output channel/value pairs.

	MidiBuffer *midiInputBuffer;	// Contains a circular buffer for MIDI data bound for Csound.
	
	void *qelemPerformanceFinished; // When set, calls csound_performanceFinished().
	void *qelemStart;				// When set, calls csound_startDeferred().
	void *qelemStop;				// When set, calls csound_stopDeferred().
	void *qelemRewind;				// When set, calls csound_rewindDeferred().
	void *qelemCompiledBang;		// When set, calls csound_OutputCompiledBang().
	void *maxClock;					// When set, calls csound_maxClockCallback().
	double maxClockInterval;		// The ms interval for maxClock.
	
	Sequencer *sequencer;
	
	pthread_t renderThread;			// Thread function used when Csound is rendering output to an audio file.
	bool renderThreadExists;		// TRUE if renderThread references an existing thread.
	bool argListValid;				// If csd/orc/sco files specified in "csound" message can be found, then TRUE.
	bool bypass;					// If TRUE, then copy audio input to output without performing Csound.
	
	int inChans;					// Equal to lesser of numInSignals and chans.
	int outChans;					// Equal to lesser of numOutSignals and chans.
	
	t_atom atomList[2];				// An atomList for sending Csound table values in response to "rsidx" msg's.
} t_csound;

t_int *csound_perform(t_int *w);
void csound_dsp(t_csound *x, t_signal **sp, short *count);
void csound_int(t_csound *x, long n);
void csound_float(t_csound *x, double f);
void csound_control(t_csound *x, t_symbol *s, short argc, t_atom *argv);
void csound_midi(t_csound *x, t_symbol *s, short argc, t_atom *argv);
void csound_path(t_csound *x, t_symbol *s);
void csound_event(t_csound *x, t_symbol *s, short argc, t_atom *argv);
void *csound_new(t_symbol *s, short argc, t_atom *argv);
void csound_free(t_csound *x);
void csound_assist(t_csound *x, void *b, long m, long a, char *s);
void csound_dblclick(t_csound *x); // Call csound_open().
void csound_open(t_csound *x); // Open the current csd or orc/sco file(s).

void csound_setValueInputEnabled(t_csound *x, long n);
void csound_setValueOutputEnabled(t_csound *x, long n);
void csound_setMessageOutputEnabled(t_csound *x, long n);
void csound_valueOutputOverdrive(t_csound *x, long n);

// Do not call this function directly upon Csound orc compilation.
// Instead, set the qelem x->qelemCompiledBang.  We're doing it this
// way to avoid a possible deadlock situation where users react to
// this bang by sending other messages to this [csound~].
void csound_OutputCompiledBang(t_csound *x);

void csound_FreeArguments(t_csound *x);
void csound_PrintArguments(t_csound *x);

void csound_csound(t_csound *x, t_symbol *s, short ac, t_atom *av); // Assemble csound argument list.
void csound_start(t_csound *x);
void csound_startDeferred(t_csound *x);
void csound_stop(t_csound *x);
void csound_stopDeferred(t_csound *x);
void csound_recordStart(t_csound *x);
void csound_recordStop(t_csound *x);
void csound_playStart(t_csound *x);
void csound_playStop(t_csound *x);
void csound_reset(t_csound *x);
void csound_rewind(t_csound *x);
void csound_rewindDeferred(t_csound *x);
void csound_performanceFinished(t_csound *x);
void csound_maxClockCallback(t_csound *x);
void csound_renderThreadFunc(t_csound *x);

void csound_sfdir(t_csound *x, t_symbol *s);
void SetEnvironment(t_csound *x, char *path);

// Csound callback functions.
void inputValueCallback(CSOUND *csound, const char *name, MYFLT *val);
void outputValueCallback(CSOUND *csound, const char *name, MYFLT val);
void messageCallback(CSOUND *csound, int attr, const char *format, va_list valist);

// Csound MIDI callback functions.
int midiInOpenCallback(CSOUND *csound, void **userData, const char *buf); 
int midiInCloseCallback(CSOUND *csound, void *userData);
int midiReadCallback(CSOUND *csound, void *userData, unsigned char *buf, int nbytes);
int midiOutOpenCallback(CSOUND *csound, void **userData, const char *buf);
int midiOutCloseCallback(CSOUND *csound, void *userData);
int midiWriteCallback(CSOUND *csound, void *userData, const unsigned char *buf, int nbytes);

// Gets pointers to Csound Channels (not to be confused with our
// ChannelObject).  It also initializes them to whatever is stored
// in it's respective ChannelObject. 
void csound_GetCsoundChannelPtrs(t_csound *x);

// Set all Csound Channel pointers to NULL so that calls to SetChannelVal()
// do not try to set a float that doesn't exist anymore.
void csound_ClearCsoundChannelPtrs(t_csound *x);

// Write a recorded sequence to file.
void csound_write(t_csound *x, t_symbol *s, short argc, t_atom *argv);

// Read a recorded sequence to file.
void csound_read(t_csound *x, t_symbol *s, short argc, t_atom *argv);

// Change playback tempo of recorded sequence.
void csound_tempo(t_csound *x, double f);

// If n == true, bypass Csound and let [csound~] inlet audio go to their respective audio outlets.
void csound_bypass(t_csound *x, long n);

// Load an audio file into a Csound table.
void csound_loadSample(t_csound *x, t_symbol *s, short argc, t_atom *argv);

// Read a single sample from a Csound table.
void csound_readSampleIndex(t_csound *x, t_symbol *s, short argc, t_atom *argv);

// Write a single sample into a Csound table.
void csound_writeSampleIndex(t_csound *x, t_symbol *s, short argc, t_atom *argv);

// Read a Csound table into an MSP [buffer~].
void csound_readBuf(t_csound *x, t_symbol *s, short argc, t_atom *argv);

// Load an MSP [buffer~] into a Csound table.
void csound_writeBuf(t_csound *x, t_symbol *s, short argc, t_atom *argv);

void csound_run(t_csound *x, t_symbol *s, short argc, t_atom *argv);

void csound_setClockInterval(t_csound *x, long n);