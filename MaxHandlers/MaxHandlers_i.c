

/* this ALWAYS GENERATED file contains the IIDs and CLSIDs */

/* link this file in with the server and any clients */


 /* File created by MIDL compiler version 8.01.0622 */
/* at Mon Jan 18 22:14:07 2038
 */
/* Compiler settings for MaxHandlers.idl:
    Oicf, W1, Zp8, env=Win64 (32b run), target_arch=AMD64 8.01.0622 
    protocol : all , ms_ext, c_ext, robust
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
/* @@MIDL_FILE_HEADING(  ) */



#ifdef __cplusplus
extern "C"{
#endif 


#include <rpc.h>
#include <rpcndr.h>

#ifdef _MIDL_USE_GUIDDEF_

#ifndef INITGUID
#define INITGUID
#include <guiddef.h>
#undef INITGUID
#else
#include <guiddef.h>
#endif

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        DEFINE_GUID(name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#else // !_MIDL_USE_GUIDDEF_

#ifndef __IID_DEFINED__
#define __IID_DEFINED__

typedef struct _IID
{
    unsigned long x;
    unsigned short s1;
    unsigned short s2;
    unsigned char  c[8];
} IID;

#endif // __IID_DEFINED__

#ifndef CLSID_DEFINED
#define CLSID_DEFINED
typedef IID CLSID;
#endif // CLSID_DEFINED

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        EXTERN_C __declspec(selectany) const type name = {l,w1,w2,{b1,b2,b3,b4,b5,b6,b7,b8}}

#endif // !_MIDL_USE_GUIDDEF_

MIDL_DEFINE_GUID(IID, IID_IPreview,0xc086684c,0x7bac,0x4fd9,0xb8,0xf1,0x37,0x75,0x48,0x27,0x15,0xee);


MIDL_DEFINE_GUID(IID, IID_IThumbnail,0x0bb30d35,0x7d43,0x480b,0x95,0x9a,0x04,0x10,0xb9,0xcc,0xb0,0xc2);


MIDL_DEFINE_GUID(IID, IID_ISearch,0xc18fc64e,0xfadc,0x4412,0xa5,0xda,0x8b,0x53,0xde,0xb5,0x0c,0xe6);


MIDL_DEFINE_GUID(IID, LIBID_MaxHandlersLib,0xdf383a3d,0xd5f6,0x4b95,0x9b,0xaf,0x23,0x47,0xb5,0xbc,0xff,0x4a);


MIDL_DEFINE_GUID(CLSID, CLSID_Preview,0x1b3e003f,0xb21f,0x48a2,0x8a,0x4f,0x0b,0x25,0xf9,0x51,0xa5,0x5e);


MIDL_DEFINE_GUID(CLSID, CLSID_Thumbnail,0x8d6814f0,0xc8a4,0x4edc,0x82,0x5a,0xbe,0x53,0xfc,0xd6,0x32,0xff);


MIDL_DEFINE_GUID(CLSID, CLSID_Search,0xe9cd75fd,0x86c8,0x4f8d,0xb0,0x26,0x7b,0x96,0x17,0xad,0xc9,0x1a);

#undef MIDL_DEFINE_GUID

#ifdef __cplusplus
}
#endif



