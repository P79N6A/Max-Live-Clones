

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


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



/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 500
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __RPCNDR_H_VERSION__
#error this stub requires an updated version of <rpcndr.h>
#endif /* __RPCNDR_H_VERSION__ */

#ifndef COM_NO_WINDOWS_H
#include "windows.h"
#include "ole2.h"
#endif /*COM_NO_WINDOWS_H*/

#ifndef __MaxHandlers_i_h__
#define __MaxHandlers_i_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IPreview_FWD_DEFINED__
#define __IPreview_FWD_DEFINED__
typedef interface IPreview IPreview;

#endif 	/* __IPreview_FWD_DEFINED__ */


#ifndef __IThumbnail_FWD_DEFINED__
#define __IThumbnail_FWD_DEFINED__
typedef interface IThumbnail IThumbnail;

#endif 	/* __IThumbnail_FWD_DEFINED__ */


#ifndef __ISearch_FWD_DEFINED__
#define __ISearch_FWD_DEFINED__
typedef interface ISearch ISearch;

#endif 	/* __ISearch_FWD_DEFINED__ */


#ifndef __Preview_FWD_DEFINED__
#define __Preview_FWD_DEFINED__

#ifdef __cplusplus
typedef class Preview Preview;
#else
typedef struct Preview Preview;
#endif /* __cplusplus */

#endif 	/* __Preview_FWD_DEFINED__ */


#ifndef __Thumbnail_FWD_DEFINED__
#define __Thumbnail_FWD_DEFINED__

#ifdef __cplusplus
typedef class Thumbnail Thumbnail;
#else
typedef struct Thumbnail Thumbnail;
#endif /* __cplusplus */

#endif 	/* __Thumbnail_FWD_DEFINED__ */


#ifndef __Search_FWD_DEFINED__
#define __Search_FWD_DEFINED__

#ifdef __cplusplus
typedef class Search Search;
#else
typedef struct Search Search;
#endif /* __cplusplus */

#endif 	/* __Search_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"
#include "shobjidl.h"
#include "thumbcache.h"
#include "filter.h"

#ifdef __cplusplus
extern "C"{
#endif 


#ifndef __IPreview_INTERFACE_DEFINED__
#define __IPreview_INTERFACE_DEFINED__

/* interface IPreview */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IPreview;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("c086684c-7bac-4fd9-b8f1-3775482715ee")
    IPreview : public IUnknown
    {
    public:
    };
    
    
#else 	/* C style interface */

    typedef struct IPreviewVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IPreview * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IPreview * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IPreview * This);
        
        END_INTERFACE
    } IPreviewVtbl;

    interface IPreview
    {
        CONST_VTBL struct IPreviewVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IPreview_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IPreview_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IPreview_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IPreview_INTERFACE_DEFINED__ */


#ifndef __IThumbnail_INTERFACE_DEFINED__
#define __IThumbnail_INTERFACE_DEFINED__

/* interface IThumbnail */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IThumbnail;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("0bb30d35-7d43-480b-959a-0410b9ccb0c2")
    IThumbnail : public IUnknown
    {
    public:
    };
    
    
#else 	/* C style interface */

    typedef struct IThumbnailVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IThumbnail * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IThumbnail * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IThumbnail * This);
        
        END_INTERFACE
    } IThumbnailVtbl;

    interface IThumbnail
    {
        CONST_VTBL struct IThumbnailVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IThumbnail_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IThumbnail_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IThumbnail_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IThumbnail_INTERFACE_DEFINED__ */


#ifndef __ISearch_INTERFACE_DEFINED__
#define __ISearch_INTERFACE_DEFINED__

/* interface ISearch */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_ISearch;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("c18fc64e-fadc-4412-a5da-8b53deb50ce6")
    ISearch : public IUnknown
    {
    public:
    };
    
    
#else 	/* C style interface */

    typedef struct ISearchVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            ISearch * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            ISearch * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            ISearch * This);
        
        END_INTERFACE
    } ISearchVtbl;

    interface ISearch
    {
        CONST_VTBL struct ISearchVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define ISearch_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define ISearch_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define ISearch_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __ISearch_INTERFACE_DEFINED__ */



#ifndef __MaxHandlersLib_LIBRARY_DEFINED__
#define __MaxHandlersLib_LIBRARY_DEFINED__

/* library MaxHandlersLib */
/* [version][uuid] */ 


EXTERN_C const IID LIBID_MaxHandlersLib;

EXTERN_C const CLSID CLSID_Preview;

#ifdef __cplusplus

class DECLSPEC_UUID("1b3e003f-b21f-48a2-8a4f-0b25f951a55e")
Preview;
#endif

EXTERN_C const CLSID CLSID_Thumbnail;

#ifdef __cplusplus

class DECLSPEC_UUID("8d6814f0-c8a4-4edc-825a-be53fcd632ff")
Thumbnail;
#endif

EXTERN_C const CLSID CLSID_Search;

#ifdef __cplusplus

class DECLSPEC_UUID("e9cd75fd-86c8-4f8d-b026-7b9617adc91a")
Search;
#endif
#endif /* __MaxHandlersLib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


