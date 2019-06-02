// dllmain.h : Declaration of module class.

class CMaxHandlersModule : public ATL::CAtlDllModuleT<CMaxHandlersModule>
{
public :
	DECLARE_LIBID(LIBID_MaxHandlersLib)
	DECLARE_REGISTRY_APPID_RESOURCEID(IDR_MAXHANDLERS, "{0b48eac1-55d9-413d-bb36-4ec618bf4d7e}")
};

extern class CMaxHandlersModule _AtlModule;
