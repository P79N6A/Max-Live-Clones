// dllmain.cpp : Implementation of DllMain.

#include "stdafx.h"
#include "resource.h"
#include "MaxHandlers_i.h"
#include "dllmain.h"
#include "xdlldata.h"

CMaxHandlersModule _AtlModule;

class CMaxHandlersApp : public CWinApp
{
public:

// Overrides
	virtual BOOL InitInstance();
	virtual int ExitInstance();

	DECLARE_MESSAGE_MAP()
};

BEGIN_MESSAGE_MAP(CMaxHandlersApp, CWinApp)
END_MESSAGE_MAP()

CMaxHandlersApp theApp;

BOOL CMaxHandlersApp::InitInstance()
{
	if (!PrxDllMain(m_hInstance, DLL_PROCESS_ATTACH, nullptr))
		return FALSE;
	return CWinApp::InitInstance();
}

int CMaxHandlersApp::ExitInstance()
{
	return CWinApp::ExitInstance();
}
