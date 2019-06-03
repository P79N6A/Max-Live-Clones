#ifndef CSOUND_H
#define CSOUND_H
/**
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
*
* P U R P O S E
*
* Declares the public C application programming interface to Csound.
*/
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#include <stdio.h>
#include <setjmp.h>


/* Experiment with doubles or floats */
#ifndef __FL_DEF
#ifndef MYFLT
# define MYFLT float
# define FL(x) x##f
#else
# define FL(x) x
#endif
#define __FL_DEF
#endif


#define CAPSIZE  60

typedef struct {
        long    windid;                 /* set by MakeGraph() */
        MYFLT   *fdata;                 /* data passed to DrawGraph */
        long    npts;                   /* size of above array */
        char    caption[CAPSIZE];       /* caption string for graph */
        short   waitflg;                /* set =1 to wait for ms after Draw */
        short   polarity;               /* controls positioning of X axis */
        MYFLT   max, min;               /* workspace .. extrema this frame */
        MYFLT   absmax;                 /* workspace .. largest of above */
        MYFLT   oabsmax;                /* Y axis scaling factor */
        int     danflag;                /* set to 1 for extra Yaxis mid span */
} WINDAT;

enum {        /* symbols for WINDAT.polarity field */
        NOPOL,
        NEGPOL,
        POSPOL,
        BIPOL
};

typedef struct {        /* for 'joystick' input window */
        long     windid;        /* xwindow handle */
        int      m_x,m_y;       /* current crosshair pixel adr */
        MYFLT    x,y;           /* current proportions of fsd */
        int      down;
} XYINDAT;



typedef struct sortable {
  char *name;
  char *ans;
  char *args;
} sortable;

typedef struct opcodelist {
	int size;
	sortable *table;
} opcodelist;



#define VMSGS 1
#if VMSGS
#define VMSG(x) if (O.odebug) x
#else
#define VMSG(x)
#endif

#define INSTR     1
#define ENDIN     2
#define OPCODE    3
#define ENDOP     4
#define LABEL     5
#define SETBEG    6
#define STRSET    6
#define PSET      7
#define SETEND    8
/* #define VSET      6 */
/* #define GVSET     7 */
/* #define VDIM      8 */
/* #define VPROGS    9 */
/* #define DVPROGS   10 */
/* #define PGMINIT   17 */
/* #define DPGMINIT  18 */

#define MAXINSNO 200
#define PMAX     1000
#define VARGMAX  1001
/* IV - Oct 24 2002: max number of input/output args for user defined opcodes */
#define OPCODENUMOUTS   24

#define ORTXT      h.optext->t
#define INCOUNT    ORTXT.inlist->count
#define OUTCOUNT   ORTXT.outlist->count
#define INOCOUNT   ORTXT.inoffs->count
#define OUTOCOUNT  ORTXT.outoffs->count
#define XINCODE    ORTXT.xincod
#  define XINARG1  (p->XINCODE & 2)
#  define XINARG2  (p->XINCODE & 1)
#  define XINARG3  (p->XINCODE & 4)
#  define XINARG4  (p->XINCODE & 8)
#define XOUTCODE   ORTXT.xoutcod        /* IV - Sep 1 2002 */
#define STRARG     ORTXT.strargs[0]
#define STRARG2    ORTXT.strargs[1]
#define STRARG3    ORTXT.strargs[2]
#define STRARG4    ORTXT.strargs[3]

#define MAXLEN     0x1000000L
#define FMAXLEN    ((MYFLT)(MAXLEN))
#define PHMASK     0x0FFFFFFL
#define PFRAC(x)   ((MYFLT)((x) & ftp->lomask) * ftp->lodiv)
#define MAXPOS     0x7FFFFFFFL

#define BYTREVS(n) ((n>>8  & 0xFF) | (n<<8 & 0xFF00))
#define BYTREVL(n) ((n>>24 & 0xFF) | (n>>8 & 0xFF00L) | (n<<8 & 0xFF0000L) | (n<<24 & 0xFF000000L))

#define NOCTS      20
#define OCTRES     8192
#define RESMASK    8191L
#define RESHIFT    13
#define CPSOCTL(n) cpsocint[n >> RESHIFT] * cpsocfrc[n & RESMASK]

#define LOBITS     10
#define LOFACT     1024
  /* LOSCAL is 1/LOFACT as MYFLT */
#define LOSCAL     FL(0.0009765625)

#define LOMASK     1023

#define SSTRCOD    0xFFFFFL
#define SSTRSIZ    200
#define ALLCHNLS   0x7fff
#define DFLT_SR    FL(44100.0)
#define DFLT_KR    FL(4410.0)
#define DFLT_KSMPS 10
#define DFLT_NCHNLS 1
#define MAXCHNLS   256

#define MAXNAME 128

typedef struct {
        int     odebug, initonly;
        int     sfread, sfwrite, sfheader, filetyp;
        int     inbufsamps, outbufsamps;
        int     informat, outformat;
        int     insampsiz, outsampsiz;
        int     displays, graphsoff, postscript, msglevel;
        int     Beatmode, cmdTempo, oMaxLag;
        int     usingcscore, Linein, Midiin, FMidiin;
        int     OrcEvts;        /* - for triginstr (re Aug 1999) */
        int     RTevents, ksensing;
        int     ringbell, termifend, stdoutfd;
        int     rewrt_hdr, heartbeat, gen01defer;
#ifdef LINUX
        int     Volume;         /* Jonathan Mohr  1995 Oct 17 */
#endif
        long    sr_override, kr_override;
        long    instxtcount, optxtsize;
        long    poolcount, gblfixed, gblacount;
        long    argoffsize, strargsize, filnamsize;
        char    *argoffspace, *strargspace, *filnamspace;
        char    *infilename, *outfilename, *playscore;
        char    *Linename, *Midiname, *FMidiname;
#ifdef __BEOS__
        char *Midioutname; /* jjk 09252000 - MIDI output device, -Q option */
#endif
} OPARMS;

#define  ONEPT          1.021975               /* A440 tuning factor */
#define  LOG10D20       0.11512925             /* for db to ampfac   */
#define  DV32768        FL(0.000030517578125)

typedef struct polish {
        char    opcod[12];
        short   incount;
        char    *arg[4];     /* Was [4][12] */
} POLISH;

typedef struct arglst {
        short   count;
        char    *arg[1];
} ARGLST;

typedef struct argoffs {
        short   count;
        short   indx[1];
} ARGOFFS;

/* Storage for parsed orchestra code, for each opcode in an INSTRTXT. */
typedef struct text {
        short   linenum;        /* Line num in orch file (currently buggy!)  */
        short   opnum;          /* Opcode index in opcodlst[] */
        char    *opcod;         /* Pointer to opcode name in global pool */
        char    *strargs[4];    /* (Unquoted) array of file names if opcode uses */
        ARGLST  *inlist;        /* Input args (pointer to item in name list) */
        ARGLST  *outlist;
        ARGOFFS *inoffs;        /* Input args (index into list of values) */
        ARGOFFS *outoffs;
        short   xincod;         /* Rate switch for multi-rate opcode functions */
        short   xoutcod;        /* output rate switch (IV - Sep 1 2002) */
        char    intype;         /* Type of first input argument (g,k,a,w etc) */
        char    pftype;         /* Type of output argument (k, a etc) */
} TEXT;

/* This struct is filled out by otran() at orch parse time.
   It is used as a template for instrument events. */
typedef struct instr {
        struct op * nxtop;              /* Linked list of instr opcodes */
        TEXT    t;                      /* Text of instrument (same in nxtop) */
        short   pmax, vmax, pextrab;    /* Arg count, size of data for all
                                           opcodes in instr */
        short   mdepends;               /* Opcode type (i/k/a) */
        short   lclkcnt, lcldcnt;       /* Storage reqs for this instr */
        short   lclwcnt, lclacnt;
        short   lclpcnt;
        short   lclfixed, optxtcount;
        short   muted;
        long    localen;
        long    opdstot;                /* Total size of opds structs in instr */
        long    *inslist;               /* Only used in parsing (?) */
        MYFLT   *psetdata;              /* Used for pset opcode */
        struct insds * instance;        /* Chain of allocated instances of
                                           this instrument */
        struct insds * lst_instance, *act_instance;     /* IV - Oct 26 2002 */
        struct instr * nxtinstxt;       /* Next instrument in orch (num order) */
        int     active;                 /* To count activations for control */
        int     maxalloc;
        MYFLT   cpuload;                /* % load this instrumemnt makes */
        struct opcodinfo *opcode_info;  /* IV - Nov 10 2002 */
        char    *insname;               /* instrument name */
} INSTRTXT;


/* A chain of TEXT structs. Note that this is identical with the first two
   members of struct INSTRTEXT, and is so typecast at various points in code. */
typedef struct op {
        struct op * nxtop;
        TEXT    t;
} OPTXT;

typedef struct fdch {
        struct fdch * nxtchp;
        int    fd;
} FDCH;

typedef struct auxch {
        struct auxch * nxtchp;
        long   size;
        void   *auxp, *endp;    /* was char* */
} AUXCH;

typedef struct monblk {
        short  pch;
        struct monblk *prv;
} MONPCH;

typedef struct {
        int     notnum[4];
} DPEXCL;

typedef struct {
        DPEXCL dpexcl[8];
        int    exclset[75];     /* for keys 25-99 */
} DPARM;

typedef struct dklst {
        struct dklst *nxtlst;
        long   pgmno;
        MYFLT  keylst[1];       /* cnt + keynos */
} DKLST;

#define DKBAS  25

typedef struct mchnblk {
        short  pgmno;
        short  insno;
/*      short  Omni; */
/*      short  Poly; */
/*         short  bas_chnl; */
/*      short  nchnls; */
        short  RegParNo;
        short  mono;
        MONPCH *monobas;
        MONPCH *monocur;
        struct insds *kinsptr[128];
        struct insds *ksusptr[128];
        MYFLT  polyaft[128];
        MYFLT  ctl_val[128];    /* ... with GS vib_rate,, stored in c102-c109 */
/*      float  katouch[128]; */
/*      short  ctl_byt[128]; */
        short  ksuscnt;
        short  sustaining;
        MYFLT  aftouch;
/*      float  chnpress; */
        MYFLT  pchbend;
/*      float  posbend; */
/*      float  pbensens; */
        DKLST  *klists;         /* chain of dpgm keylists */
        DPARM  *dparms;         /* drumset params     */
        int    dpmsb;
        int    dplsb;
/*      float  finetune; */
/*      float  crsetune; */
  /*    float  tuning; */    /* displ in semitones */
} MCHNBLK;

/* 
*       Forward declaration.
*/
struct GLOBALS_;

/* This struct holds the info for a concrete instrument event
   instance in performance. */
typedef struct insds {
        struct opds * nxti;             /* Chain of init-time opcodes */
        struct opds * nxtp;             /* Chain of performance-time opcodes */
        struct insds * nxtinstance;     /* Next allocated instance */
        struct insds * prvinstance;     /* Previous allocated instance */
        struct insds * nxtact;          /* Next in list of active instruments */
        struct insds * prvact;          /* Previous in list of active instruments */
        struct insds * nxtoff;          /* Next instrument to terminate */
        FDCH    fdch;           /* Chain of files used by opcodes in this instr */
        AUXCH   auxch;          /* Extra memory used by opcodes in this instr */
        MCHNBLK *m_chnbp;       /* MIDI note info block if event started from MIDI */
        short   m_pitch;        /* MIDI pitch, for simple access */
        short   m_veloc;        /* ...ditto velocity */
        short   xtratim;        /* Extra release time requested with xtratim opcode */
        short   relesing;       /* Flag to indicate we are releasing, test with release opcode */
        short   insno;          /* Instrument number */
        short   actflg;         /* Set if instr instance is active (performing) */
        MYFLT   offbet;         /* Time to turn off event, in score beats */
        MYFLT   offtim;         /* Time to turn off event, in seconds (negative on indef/tie) */
        struct insds * nxtolap; /* ptr to next overlapping voice */
         /* end of overlap */
		struct GLOBALS_ *csound;/* ptr to Csound engine and API for externals */
        void    *opcod_iobufs;  /* IV - Sep 8 2002: user opcode I/O buffers */
        void    *opcod_deact, *subins_deact;    /* IV - Oct 24 2002 */
        MYFLT   p0;             /* Copy of required p-field values for quick access */
        MYFLT   p1;
        MYFLT   p2;
        MYFLT   p3;
} INSDS;

typedef void    (*SUBR)(void *);

/* This struct holds the info for one opcode in a concrete
   instrument instance in performance. */
typedef struct opds {
        struct opds * nxti;     /* Next opcode in init-time chain */
        struct opds * nxtp;     /* Next opcode in perf-time chain */
        SUBR    iopadr;         /* Initialization (i-time) function pointer */
        SUBR    opadr;          /* Perf-time (k- or a-rate) function pointer */
/**
* Deinitialization function pointer;
* if not null, called during cleanup on each opcode instance;
* useful for deallocating memory or other resources managed by the opcode.
*/
        SUBR    dopadr;         /* Deinitialization function pointer */
        OPTXT   *optext;        /* Orch file template part for this opcode */
        INSDS   *insdshead;     /* Owner instrument instance data structure */
} OPDS;

typedef struct lblblk {
        OPDS    h;
        OPDS    *prvi;
        OPDS    *prvp;
} LBLBLK;

typedef struct oentry {
        char    *opname;
        unsigned short  dsblksiz;
        unsigned short  thread;
        char    *outypes;
        char    *intypes;
        SUBR    iopadr;
        SUBR    kopadr;
        SUBR    aopadr;
/**
* Deinitialization function pointer;
* if not null, called during cleanup on each opcode instance;
* useful for deallocating memory or other resources managed by the opcode.
*/
        SUBR    dopadr;          
        void    *useropinfo;    /* IV - Oct 12 2002: user opcode parameters */
        int     prvnum;         /* IV - Oct 31 2002 */
} OENTRY;

typedef struct {
        MYFLT   *begp, *curp, *endp, feedback[6];
        long    scount;
} OCTDAT;

#define MAXOCTS 8

typedef struct {
        long    npts, nocts, nsamps;
        MYFLT   lofrq, hifrq, looct, srate;
        OCTDAT  octdata[MAXOCTS];
        AUXCH   auxch;
} DOWNDAT;

typedef struct {
        long    ktimstamp, ktimprd;
        long    npts, nfreqs, dbout;
        DOWNDAT *downsrcp;
        AUXCH   auxch;
} SPECDAT;

#define AIFF_MAXCHAN 8
typedef struct {
        MYFLT   natcps;
        MYFLT   gainfac;
        short   loopmode1;
        short   loopmode2;
        long    begin1, end1;
        long    begin2, end2;
        MYFLT   fmaxamps[AIFF_MAXCHAN+1];
} AIFFDAT;

typedef struct {
        MYFLT gen01;
        MYFLT ifilno;
        MYFLT iskptim;
        MYFLT iformat;
        MYFLT channel;
        MYFLT sample_rate;
        char  strarg[SSTRSIZ];
} GEN01ARGS;

typedef struct {
        long    flen;
        long    lenmask;
        long    lobits;
        long    lomask;
        MYFLT   lodiv;
        MYFLT   cvtbas, cpscvt;
        short   loopmode1;
        short   loopmode2;
        long    begin1, end1;   /* all these in ..  */
        long    begin2, end2;
        long    soundend, flenfrms; /* .. sample frames */
        long    nchanls;
        long    fno;
        GEN01ARGS gen01args;
        MYFLT   ftable[1];
} FUNC;

typedef struct MEMFIL {
        char    filename[256];  /* Made larger RWD */
        char    *beginp;
        char    *endp;
        long    length;
 struct MEMFIL  *next;
} MEMFIL;

/* This struct holds the data for one score event. */
typedef struct event {
        char    *strarg;        /* Original argument list string of event */
        char    opcod;          /* Event type */
        short   pcnt;           /* Number of p-fields */
        MYFLT   p2orig;         /* Event start time */
        MYFLT   p3orig;         /* Length */
        MYFLT   offtim;         /* k-time to turn off this event */
        MYFLT   p[PMAX+1];      /* All p-fields for this event */
} EVTBLK;

typedef struct eventnode {
        EVTBLK evt; /* Must be first in struct so it can be typecast & freed */
        struct eventnode *nxtevt;
        int    kstart, insno;
} EVTNODE;

typedef struct {
        OPDS    h;
        MYFLT   *ktempo, *istartempo;
        MYFLT   prvtempo;
} TEMPO;

typedef struct namedInstr {
        char    *name;
        long    instno;
        INSTRTXT *ip;
        struct namedInstr *prv;
} INSTRNAME;

typedef struct opcodinfo {              /* IV - Oct 24 2002 */
        long    instno;
        char    *name, *intypes, *outtypes;
        short   inchns, outchns, perf_incnt, perf_outcnt;
        short   *in_ndx_list, *out_ndx_list;
        INSTRTXT *ip;
        struct  opcodinfo *prv;
} OPCODINFO;

FUNC   *ftfind(MYFLT*);
MEMFIL *ldmemfile(char *);
#define MAXCHAN       96        /* for 6 ports */


typedef struct memblk {
        struct memblk *nxtmem;
        char   *memend;
} MEMHDR;

typedef struct srtblk {
        struct srtblk *nxtblk;
        struct srtblk *prvblk;
        short   insno;
        short   pcnt;
        MYFLT   p1val;
        MYFLT   p2val;
        MYFLT   p3val;
        MYFLT   newp2;
        MYFLT   newp3;
        char    preced;
        char    text[9];
} SRTBLK;


typedef union {
  unsigned long dwData;
  unsigned char bData[4];
} MIDIMESSAGE;

#define MIDIINBUFMAX    (1024)
#define MIDIINBUFMSK    (1023)

typedef struct GLOBALS_
{
    int (*csoundGetVersion)(void);
    int (*csoundGetAPIVersion)(void);
	void *(*csoundGetHostData)(void *csound);
	void (*csoundSetHostData)(void *csound, void *hostData);
	int (*csoundPerform)(void *csound, int argc, char **argv);
	int (*csoundCompile)(void *csound, int argc, char **argv);
	int (*csoundPerformKsmps)(void *csound);
	int (*csoundPerformBuffer)(void *csound);
	void (*csoundCleanup)(void *csound);
	void (*csoundReset)(void *csound);
	MYFLT (*csoundGetSr)(void *csound);
	MYFLT (*csoundGetKr)(void *csound);
	int (*csoundGetKsmps)(void *csound);
	int (*csoundGetNchnls)(void *csound);
	int (*csoundGetSampleFormat)(void *csound);
	int (*csoundGetSampleSize)(void *csound);
	long (*csoundGetInputBufferSize)(void *csound);
	long (*csoundGetOutputBufferSize)(void *csound);
	void *(*csoundGetInputBuffer)(void *csound);
	void *(*csoundGetOutputBuffer)(void *csound);
	MYFLT *(*csoundGetSpin)(void *csound);
	MYFLT *(*csoundGetSpout)(void *csound);		
	MYFLT (*csoundGetScoreTime)(void *csound);
	MYFLT (*csoundGetProgress)(void *csound);
	MYFLT (*csoundGetProfile)(void *csound);
	MYFLT (*csoundGetCpuUsage)(void *csound);
	int (*csoundIsScorePending)(void *csound);
	void (*csoundSetScorePending)(void *csound, int pending);
	MYFLT (*csoundGetScoreOffsetSeconds)(void *csound);
	void (*csoundSetScoreOffsetSeconds)(void *csound, MYFLT offset);
	void (*csoundRewindScore)(void *csound);
	void (*csoundMessage)(void *csound, const char *format, ...);
	void (*csoundMessageV)(void *csound, const char *format, va_list args);
	void (*csoundThrowMessage)(void *csound, const char *format, ...);
	void (*csoundThrowMessageV)(void *csound, const char *format, va_list args);
    void (*csoundSetMessageCallback)(void *csound, void (*csoundMessageCallback)(void *hostData, const char *format, va_list valist));
  /*  void (*csoundMessageCallback)(void *hostData, const char *format, va_list valist); */
    void (*csoundSetThrowMessageCallback)(void *csound, void (*csoundThrowMessageCallback)(void *hostData, const char *format, va_list valist));
  /*  void (*csoundThrowMessageCallback)(void *hostData, const char *format, va_list valist); */
	int (*csoundGetMessageLevel)(void *csound);
	void (*csoundSetMessageLevel)(void *csound, int messageLevel);
	void (*csoundInputMessage)(void *csound, const char *message_);
	void (*csoundKeyPress)(void *csound, char c);
    void (*csoundSetInputValueCallback)(void *csound, void (*inputValueCalback)(void *hostData, char *channelName, MYFLT *value));
    void (*csoundSetOutputValueCallback)(void *csound, void (*csoundoutputValueCalback)(void *hostData, char *channelName, MYFLT value));
	void (*csoundScoreEvent)(void *csound, char type, MYFLT *pFields, long numFields);
    void (*csoundSetExternalMidiOpenCallback)(void *csound, void (*midiOpenCallback)(void *hostData));	
    void (*csoundSetExternalMidiReadCallback)(void *csound, int (*readMidiCallback)(void *hostData, unsigned char *midiData, int size));
    void (*csoundSetExternalMidiWriteCallback)(void *csound, int (*writeMidiCallback)(void *hostData, unsigned char *midiData));
    void (*csoundSetExternalMidiCloseCallback)(void *csound, void (*closeMidiCallback)(void *hostData));
	int (*csoundIsExternalMidiEnabled)(void *csound);
	void (*csoundSetExternalMidiEnabled)(void *csound, int enabled);
	void (*csoundSetIsGraphable)(void *csound, int isGraphable);		
    void (*csoundSetMakeGraphCallback)(void *csound, 
                                       void (*makeGraphCallback)(void *hostData,
                                                                 WINDAT *p,
                                                                 char *name));
    void (*csoundSetDrawGraphCallback)(void *csound, void (*drawGraphCallback)(void *hostData, WINDAT *p));
    void (*csoundSetKillGraphCallback)(void *csound, void (*killGraphCallback)(void *hostData, WINDAT *p));
	void (*csoundSetExitGraphCallback)(void *csound, int (*exitGraphCallback)(void *hostData));
    opcodelist *(*csoundNewOpcodeList)(void);
	void (*csoundDisposeOpcodeList)(opcodelist *opcodelist_);
    int (*csoundAppendOpcode)(char *opname, int dsblksiz, int thread,
                      char *outypes, char *intypes, SUBR iopadr,
                      SUBR kopadr, SUBR aopadr, SUBR dopadr);       
	int (*csoundLoadExternal)(void *csound, const char *libraryPath);
	int (*csoundLoadExternals)(void *csound);
	void *(*csoundOpenLibrary)(const char *libraryPath);
	void *(*csoundCloseLibrary)(void *library);
	void *(*csoundGetLibrarySymbol)(void *library, const char *procedureName);
	void (*csoundSetYieldCallback)(void *csound, int (*yieldCallback)(void *hostData));
	void (*csoundSetEnv)(void *csound, const char *environmentVariableName, const char *path); 
    void (*csoundSetPlayopenCallback)(void *csound,
                              void (*playopen__)(int nchanls, int dsize,
                                                 float sr, int scale));
	void (*csoundSetRtplayCallback)(void *csound, void (*rtplay__)(char *outBuf, int nbytes));
    void (*csoundSetRecopenCallback)(void *csound, void (*recopen__)(int nchanls, int dsize,
                                               float sr, int scale));
	void (*csoundSetRtrecordCallback)(void *csound, int (*rtrecord__)(char *inBuf, int nbytes));
	void (*csoundSetRtcloseCallback)(void *csound, void (*rtclose__)(void));
  int           ksmps, nchnls;
  int           global_ksmps;
  MYFLT         global_ensmps, global_ekr, global_onedkr;
  MYFLT         global_hfkprd, global_kicvt;
  long          global_kcounter;
  MYFLT         esr, ekr;
  char          *orchname, *scorename, *xfilename;
	/* oload.h */
  short         nlabels;
  short         ngotos;
  int           strsmax;
  char          ** strsets;
  int           peakchunks;
  MYFLT         *zastart;
  long          zalast;
  long          kcounter;
  EVTBLK        *currevent;
  MYFLT         onedkr;
  MYFLT         onedsr;
  MYFLT         kicvt;
  MYFLT         sicvt;
  MYFLT         *spin;
  MYFLT         *spout;
  int           nspin;
  int           nspout;
  int           spoutactive;
  int           keep_tmp;
  int           dither_output;
  OENTRY        *opcodlst;
  void          *opcode_list;   /* IV - Oct 31 2002 */
  OENTRY        *oplstend;
  FILE*         dribble;
  long          holdrand;
  int           maxinsno;
  int           maxopcno;       /* IV - Oct 24 2002 */
  INSDS         *curip;
  EVTBLK        *Linevtblk;
  long          nrecs;
  FILE*         Linepipe;
  int           Linefd;
  MYFLT         *ls_table;
  MYFLT         curr_func_sr;
  char          *retfilnam;
  INSTRTXT      **instrtxtp;
#define ERRSIZ (200)
  char          errmsg[ERRSIZ];   /* sprintf space for compiling msgs */
  FILE*         scfp;
  FILE*         oscfp;
  MYFLT         maxamp[MAXCHNLS];
  MYFLT         smaxamp[MAXCHNLS];
  MYFLT         omaxamp[MAXCHNLS];
  MYFLT         *maxampend;
	unsigned long maxpos[MAXCHNLS], smaxpos[MAXCHNLS], omaxpos[MAXCHNLS];
  int           tieflag;
  char          *ssdirpath, *sfdirpath;
  char          *tokenstring;
  POLISH        *polish;
  FILE*         scorein;
  FILE*         scoreout;
  MYFLT         ensmps, hfkprd;
  MYFLT         *pool;
  short         *argoffspace;
  INSDS         *frstoff;
  int           sensType;
  jmp_buf       exitjmp;
  SRTBLK        *frstbp;
  int           sectcnt;
  MCHNBLK       *m_chnbp[MAXCHAN];
  MYFLT         *cpsocint, *cpsocfrc;
  int           inerrcnt, synterrcnt, perferrcnt;
  int           MIDIoutDONE;
  int           midi_out;
  char          strmsg[100];
  INSTRTXT      instxtanchor;
  INSDS         actanchor;
  long          rngcnt[MAXCHNLS];
  short         rngflg, multichan;
  EVTNODE       OrcTrigEvts; /* List of started events, used in playevents() */
  char          name_full[256];            /* Remember name used */
  int           Mforcdecs, Mxtroffs, MTrkend;
  MYFLT         tran_sr,tran_kr,tran_ksmps;
  MYFLT         tran_0dbfs;
  int           tran_nchnls;
  MYFLT         tpidsr, mpidsr, mtpdsr;
  char          *sadirpath;
  char          *oplibs;
  OPARMS        *oparms;
  void          *hostdata;
  OPCODINFO     *opcodeInfo;    /* IV - Oct 20 2002 */
  void          *instrumentNames;
  MYFLT         dbfs_to_short;
  MYFLT         short_to_dbfs;
  MYFLT         dbfs_to_float;
  MYFLT         float_to_dbfs;
  MYFLT         dbfs_to_long;
  MYFLT         long_to_dbfs;
  unsigned int  rtin_dev;
  unsigned int  rtout_dev;
  int		MIDIINbufIndex;
  MIDIMESSAGE   MIDIINbuffer2[MIDIINBUFMAX];
} GLOBALS;


/*	Macro to ease accessing the API functions from 
	a plugin [or internal, i guess] opcode */
#define HOST p->h.insdshead->csound

	/*
	* Platform-dependent definitions and declarations.
	*/
#ifdef _WIN32
#    ifdef LIBRARY_EXPORTS
#        define LIBRARY_API __declspec(dllexport)
#    else
#        define LIBRARY_API __declspec(dllimport)
#    endif
#elif
#    define LIBRARY_API
#endif


	/**
	* ERROR DEFINITIONS
	*/

	typedef enum
	{
		CSOUND_SUCCESS = 0,
		CSOUND_UTIL_SUCCESS = -1,
		CSOUND_ERROR = -2,
		CSOUND_INITIALIZATION = -3,
		CSOUND_PERFORMANCE = -4,
		CSOUND_MEMORY = -5
	}
	CSOUND_STATUS;
	
	/*
	* INSTANTIATION
	*/

	/**
	* Creates an instance of Csound.
	* Returns an opaque pointer that must be passed to most Csound API functions.
	* The hostData parameter can be null, or it can be a pointer to any sort of 
	* data; this pointer can be accessed from the Csound instance that is passed to callback routines.
	*/
	void *csoundCreate(void *hostData);

	/**
	* Returns a pointer to the requested interface, if available, in the interface argument,
	* and its version number, in the version argument.
	* Returns 0 for success and 1 for failure.
	*/
	int csoundQueryInterface(const char *name, void **iface, int *version);

	/**
	* Destroys an instance of Csound.
	*/
	void csoundDestroy(void *csound);

	/**
	* Returns the version number times 100 (4.20 = 420).
	*/
	int csoundGetVersion(void);

	/**
	* Returns the version of this API number times 100 (4.20 = 420).
	*/
	int csoundGetAPIVersion(void);

	/**
	* Returns host data.
	*/
	void *csoundGetHostData(void *csound);

	/**
	* Sets host data.
	*/
	void csoundSetHostData(void *csound, void *hostData);

	/*
	* PERFORMANCE
	*/

	/**
	* Compiles and renders a Csound performance, 
	* as directed by the supplied command-line arguments,
	* in one pass. Returns 1 for success, 0 for failure.
	*/
	int csoundPerform(void *csound, int argc, char **argv);

	/**
	* Compiles Csound input files (such as an orchestra and score)
	* as directed by the supplied command-line arguments,
	* but does not perform them. Returns a non-zero error code on failure.
	* In this (host-driven) mode, the sequence of calls should be as follows:
	* 
        *       csoundCompile(argc, argv, thisObj);
        *       while(!csoundPerformBuffer());
        *       csoundCleanup();
        *       csoundReset();
	*/
	int csoundCompile(void *csound, int argc, char **argv);

	/**
	* Senses input events, and performs one control sample worth (ksmps) of audio output.
	* Note that csoundCompile must be called first.
	* Returns false during performance, and true when performance is finished.
	* If called until it returns true, will perform an entire score.
	* Enables external software to control the execution of Csound,
	* and to synchronize performance with audio input and output.
	*/
	int csoundPerformKsmps(void *csound);

	/**
	* Performs Csound, sensing real-time and score events 
	* and processing one buffer's worth (-b frames) of interleaved audio.
	* Note that csoundCompile must be called first, then call csoundGetOutputBuffer()
	* and csoundGetInputBuffer() to get the pointer to csound's i/o buffers.
	* Returns false during performance, and true when performance is finished.
	*/
	int csoundPerformBuffer(void *csound);

	/**
	* Prints information about the end of a performance.
	* Must be called after the final call to csoundPerformKsmps.
	*/
	void csoundCleanup(void *csound);

	/**
	* Resets all internal memory and state in preparation for a new performance.
	* Enables external software to run successive Csound performances
	* without reloading Csound.
	*/
	void csoundReset(void *csound);

	/*
	* ATTRIBUTES
	*/

	/**
	* Returns the number of audio sample frames per second.
	*/
	MYFLT csoundGetSr(void *csound);

	/**
	* Returns the number of control samples per second.
	*/
	MYFLT csoundGetKr(void *csound);

	/**
	* Returns the number of audio sample frames per control sample.
	*/
	int csoundGetKsmps(void *csound);

	/**
	* Returns the number of audio output channels.
	*/
	int csoundGetNchnls(void *csound);

	/**
	* Returns the sample format.
	*/
	int csoundGetSampleFormat(void *csound);

	/**
	* Returns the size in bytes of a single sample.
	*/
	int csoundGetSampleSize(void *csound);

	/**
	* Returns the number of samples in Csound's input buffer.
	*/
	long csoundGetInputBufferSize(void *csound);

	/**
	* Returns the number of samples in Csound's output buffer.
	*/
	long csoundGetOutputBufferSize(void *csound);

	/**
	* Returns the address of the Csound audio input buffer.
	* Enables external software to write audio into Csound before calling csoundPerformBuffer
	*/
	void *csoundGetInputBuffer(void *csound);

	/**
	* Returns the address of the Csound audio output buffer.
	* Enables external software to read audio from Csound after calling csoundPerformBuffer.
	*/
	void *csoundGetOutputBuffer(void *csound);

	/**
	* Returns the address of the Csound audio input working buffer (spin).
	* Enables external software to write audio into Csound before calling csoundPerformKsmps.
	*/
	MYFLT *csoundGetSpin(void *csound);

	/**
	* Returns the address of the Csound audio output working buffer (spout).
	* Enables external software to read audio from Csound after calling csoundPerformKsmps.
	*/
	MYFLT *csoundGetSpout(void *csound);		

	/**
	* Returns the current score time.
	*/
	MYFLT csoundGetScoreTime(void *csound);
	
	/**
	* Returns the % of score completed.
	*/
	MYFLT csoundGetProgress(void *csound);

	/**
	* Returns the scoreTime vs. calculatedTime ratio.  For real-time performance this
	* value should be always == 1.
	*/
	MYFLT csoundGetProfile(void *csound);
		
	/**
	* Returns the sampsTime vs. calculatedTime ratio.
	*/
	MYFLT csoundGetCpuUsage(void *csound);

	/*
	* SCORE HANDLING
	*/

	/**
	* Returns whether Csound's score is synchronized with external software.
	*/
	int csoundIsScorePending(void *csound);

	/**
	* Sets whether Csound's score is synchronized with external software.
	*/
	void csoundSetScorePending(void *csound, int pending);

	/**
	* Csound events prior to the offset are consumed and discarded prior to beginning performance.
	* Can be used by external software to begin performance midway through a Csound score.
	*/
	MYFLT csoundGetScoreOffsetSeconds(void *csound);

	/**
	* Csound events prior to the offset are consumed and discarded prior to beginning performance.
	* Can be used by external software to begin performance midway through a Csound score.
	*/
	void csoundSetScoreOffsetSeconds(void *csound, MYFLT offset);

	/**
	* Rewinds a compiled Csound score to its beginning.
	*/
	void csoundRewindScore(void *csound);

	/*
	* MESSAGES & TEXT
	*/

	/**
	* Displays an informational message.
	*/
	void csoundMessage(void *csound, const char *format, ...);
	void csoundMessageV(void *csound, const char *format, va_list args);
        void csoundMessageS(void *csound, const char *format, va_list args);

	/**
	* Throws an informational message as a C++ exception.
	*/
	void csoundThrowMessage(void *csound, const char *format, ...);
	void csoundThrowMessageV(void *csound, const char *format, va_list args);

	/**
	* Sets a function to be called by Csound to print an informational message.
	*/
	void csoundSetMessageCallback(void *csound, void (*csoundMessageCallback)(void *csound, const char *format, va_list valist));

	/**
	* Sets a funtion for Csound to stop execution with an error message or exception.
	*/
	void csoundSetThrowMessageCallback(void *csound, void (*throwMessageCallback)(void *csound, const char *format, va_list valist));

	/**
	* Returns the Csound message level (from 0 to 7).
	*/
	int csoundGetMessageLevel(void *csound);

	/**
	* Sets the Csound message level (from 0 to 7).
	*/
	void csoundSetMessageLevel(void *csound, int messageLevel);

	/**
	* Input a NULL-terminated string (as if from a console) usually used for lineevents
	*/	
	void csoundInputMessage(void *csound, const char *message);

	/**
	* Set the ascii code of most recent key pressed.
	* This value is used by the 'keypress' opcode.
	*/	
	void csoundKeyPress(void *csound, char c);

	/*
	* CONTROL AND EVENTS
	*/

	/** 
	* Control values are specified by a 'channelName' string.
	* Note that the 'invalue' & 'outvalue' channels can be specified by either
	* a string or a number.  If a number is specified, it will be converted
	* to a string before making the callbacks to the external software.
	* numerical channel names into text, so if the orchestra contains
	*/

	/**
	* Called by external software to set a function for Csound to fetch input control values.
	* The 'invalue' opcodes will directly call this function.
	*/
	void csoundSetInputValueCallback(void *csound, void (*inputValueCalback)(void *csound, char *channelName, MYFLT *value));

	/**
	* Called by external software to set a function for Csound to send output control values.
	* The 'outvalue' opcodes will directly call this function.
	*/
	void csoundSetOutputValueCallback(void *csound, void (*outputValueCalback)(void *csound, char *channelName, MYFLT value));

	/**
	* Send a new score event. 'type' is the score event type ('i', 'f', or 'e')
	* 'numFields' is the size of the pFields array.  'pFields' is an array
	*  of floats with all the pfields for this event, starting with the p1 value
	*  specified in pFields[0].
	*/
	void csoundScoreEvent(void *csound, char type, MYFLT *pFields, long numFields);

	/*
	* MIDI
	*/

	/**
	* Called by external software to set a function for Csound to call to open MIDI input.
	*/
	void csoundSetExternalMidiOpenCallback(void *csound, void (*midiOpenCallback)(void *csound));	

	/**
	* Called by external software to set a function for Csound to call to read MIDI messages.
	*/
	void csoundSetExternalMidiReadCallback(void *csound, int (*readMidiCallback)(void *csound, unsigned char *midiData, int size));

	/**
	* Called by external software to set a function for Csound to call to write a 4-byte MIDI message.
	*/
	void csoundSetExternalMidiWriteCallback(void *csound, int (*writeMidiCallback)(void *csound, unsigned char *midiData));

	/**
	* Called by external software to set a function for Csound to call to close MIDI input.
	*/
	void csoundSetExternalMidiCloseCallback(void *csound, void (*closeMidiCallback)(void *csound));

	/**
	* Returns true if external MIDI is enabled, and false otherwise.
	*/
	int csoundIsExternalMidiEnabled(void *csound);

	/**
	* Sets whether external MIDI is enabled.
	*/
	void csoundSetExternalMidiEnabled(void *csound, int enabled);

	/*
	* FUNCTION TABLE DISPLAY
	*/

	/**
	* Tells Csound supports external graphic table display.
	*/
	void csoundSetIsGraphable(void *csound, int isGraphable);		

	/**
	* Called by external software to set Csound's MakeGraph function.
	*/					
	void csoundSetMakeGraphCallback(void *csound, void (*makeGraphCallback)(void *csound, WINDAT *windat, char *name));

	/**
	* Called by external software to set Csound's DrawGraph function.
	*/
	void csoundSetDrawGraphCallback(void *csound, void (*drawGraphCallback)(void *csound, WINDAT *windat));

	/**
	* Called by external software to set Csound's KillGraph function.
	*/
	void csoundSetKillGraphCallback(void *csound, void (*killGraphCallback)(void *csound, WINDAT *windat));

	/**
	* Called by external software to set Csound's ExitGraph function.
	*/
	void csoundSetExitGraphCallback(void *csound, int (*exitGraphCallback)(void *csound));

	/*
	* OPCODES
	*/

	/*
	* Gets a list of all opcodes.  
	* Make sure to call csoundDisposeOpcodeList() when done with the list.
	*/
        opcodelist *csoundNewOpcodeList(void);

	/*
	* Releases an opcode list 
	*/
	void csoundDisposeOpcodeList(opcodelist *opcodelist_);

	/**
	* Appends an opcode implemented by external software
	* to Csound's internal opcode list.
	* The opcode list is extended by one slot,
	* and the parameters are copied into the new slot.
	*/
	int csoundAppendOpcode(char *opname, int dsblksiz, int thread, char *outypes, char *intypes, void (*iopadr)(void *), void (*kopadr)(void *), void (*aopadr)(void *), void (*dopadr)(void *));          

	/*
	* Signature for external registration function,
	* such as for plugin opcodes or scripting languages.
	* The external has complete access to the Csound API,
	* so a plugin opcode can just call csound->AppendOpcode() 
	* for each of its opcodes.
	*/
        typedef PUBLIC int (*CsoundRegisterExternalType)(void *csound);

	/*
	* Registers all opcodes in the library.
	*/
	int csoundLoadExternal(void *csound, const char *libraryPath);

	/*
	* Registers all opcodes in all libraries in the opcodes directory.
	*/
	int csoundLoadExternals(void *csound);

	/*
	* MISCELLANEOUS FUNCTIONS
	*/

	/*
	* Platform-independent function 
	* to load a shared library.
	*/
	void *csoundOpenLibrary(const char *libraryPath);
	
	/*
	* Platform-independent function 
	* to unload a shared library.
	*/
	void *csoundCloseLibrary(void *library);

	/*
	* Platform-independent function 
	* to get a symbol address
	* in a shared library.
	*/
	void *csoundGetLibrarySymbol(void *library, const char *symbolName);

	/**
	* Called by external software to set a function for 
	* checking system events, yielding cpu time for
	* coopertative multitasking, etc.. 
	* This function is optional.  It is often used as a way
	* to 'turn off' Csound, allowing it to exit gracefully.
	* In addition, some operations like utility analysis
	* routines are not reentrant and you should use this
	* function to do any kind of updating during the operation.
	*
	* Returns an 'OK to continue' boolean
	*/
	void csoundSetYieldCallback(void *csound, int (*yieldCallback)(void *csound));

	/**
	* Sets an evironment path for a getenv() call in Csound.
	* you can also use this method as a way to have different
	* csound instances have different default directories,
	* change the default dirs during performance, etc..
	*
	* Currently, Csound uses these 'envi' names only:
        *       "SSDIR", "SFDIR", "SADIR", "SFOUTYP", "INCDIR", 
        *               "CSSTRNGS", "MIDIOUTDEV", "CSOUND_HOME", and "HOME"
	*/
	void csoundSetEnv(void *csound, const char *environmentVariableName, const char *path); 

	/**
	* 	An atexit() override. To use, you must #define atexit csoundAtexit in sysdep.h
	*	The functions are excecuted in csoundCleanup()
	* 	Metrowerks MSL does not define atexit so this is REQUIRED on mac classic/carbon.
	* 	It may be useful to use this anyway, as then you can be sure csound terminates
	*	cleanly even when exit() has not been called.
	*/
	int csoundAtexit(void (*func)(void));
	
	
	
	/**
        *       REAL-TIME AUDIO PLAY AND RECORD
	*/

	/**
	* Sets a function to be called by Csound for opening real-time audio playback.
	*/
	void csoundSetPlayopenCallback(void *csound, void (*playopen__)(int nchanls, int dsize, float sr, int scale));

	/**
	* Sets a function to be called by Csound for performing real-time audio playback.
	*/
	void csoundSetRtplayCallback(void *csound, void (*rtplay__)(char *outBuf, int nbytes));

	/**
	* Sets a function to be called by Csound for opening real-time audio recording.
	*/
	void csoundSetRecopenCallback(void *csound, void (*recopen_)(int nchanls, int dsize, float sr, int scale));

	/**
	* Sets a function to be called by Csound for performing real-time audio recording.
	*/
	void csoundSetRtrecordCallback(void *csound, int (*rtrecord__)(char *inBuf, int nbytes));

	/**
	* Sets a function to be called by Csound for closing real-time audio playback and recording.
	*/
	void csoundSetRtcloseCallback(void *csound, void (*rtclose__)(void));


#ifdef __cplusplus
};
#endif /* __cplusplus */

#endif /* CSOUND_H */






