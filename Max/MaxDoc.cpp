
// MaxDoc.cpp : implementation of the CMaxDoc class
//

#include "stdafx.h"
// SHARED_HANDLERS can be defined in an ATL project implementing preview, thumbnail
// and search filter handlers and allows sharing of document code with that project.
#ifndef SHARED_HANDLERS
#include "Max.h"
#endif

#include "MaxDoc.h"

#include <propkey.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

// CMaxDoc

IMPLEMENT_DYNCREATE(CMaxDoc, CDocument)

BEGIN_MESSAGE_MAP(CMaxDoc, CDocument)
	ON_COMMAND(ID_FILE_SEND_MAIL, &CMaxDoc::OnFileSendMail)
	ON_UPDATE_COMMAND_UI(ID_FILE_SEND_MAIL, &CMaxDoc::OnUpdateFileSendMail)
END_MESSAGE_MAP()

BEGIN_DISPATCH_MAP(CMaxDoc, CDocument)
END_DISPATCH_MAP()

// Note: we add support for IID_IMax to support typesafe binding
//  from VBA.  This IID must match the GUID that is attached to the
//  dispinterface in the .IDL file.

// {154f045e-9521-44aa-9189-668937649755}
static const IID IID_IMax =
{0x154f045e,0x9521,0x44aa,{0x91,0x89,0x66,0x89,0x37,0x64,0x97,0x55}};

BEGIN_INTERFACE_MAP(CMaxDoc, CDocument)
	INTERFACE_PART(CMaxDoc, IID_IMax, Dispatch)
END_INTERFACE_MAP()


// CMaxDoc construction/destruction

CMaxDoc::CMaxDoc() noexcept
{
	// TODO: add one-time construction code here

	EnableAutomation();

	AfxOleLockApp();
}

CMaxDoc::~CMaxDoc()
{
	AfxOleUnlockApp();
}

BOOL CMaxDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}




// CMaxDoc serialization

void CMaxDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: add storing code here
	}
	else
	{
		// TODO: add loading code here
	}
}

#ifdef SHARED_HANDLERS

// Support for thumbnails
void CMaxDoc::OnDrawThumbnail(CDC& dc, LPRECT lprcBounds)
{
	// Modify this code to draw the document's data
	dc.FillSolidRect(lprcBounds, RGB(255, 255, 255));

	CString strText = _T("TODO: implement thumbnail drawing here");
	LOGFONT lf;

	CFont* pDefaultGUIFont = CFont::FromHandle((HFONT) GetStockObject(DEFAULT_GUI_FONT));
	pDefaultGUIFont->GetLogFont(&lf);
	lf.lfHeight = 36;

	CFont fontDraw;
	fontDraw.CreateFontIndirect(&lf);

	CFont* pOldFont = dc.SelectObject(&fontDraw);
	dc.DrawText(strText, lprcBounds, DT_CENTER | DT_WORDBREAK);
	dc.SelectObject(pOldFont);
}

// Support for Search Handlers
void CMaxDoc::InitializeSearchContent()
{
	CString strSearchContent;
	// Set search contents from document's data.
	// The content parts should be separated by ";"

	// For example:  strSearchContent = _T("point;rectangle;circle;ole object;");
	SetSearchContent(strSearchContent);
}

void CMaxDoc::SetSearchContent(const CString& value)
{
	if (value.IsEmpty())
	{
		RemoveChunk(PKEY_Search_Contents.fmtid, PKEY_Search_Contents.pid);
	}
	else
	{
		CMFCFilterChunkValueImpl *pChunk = nullptr;
		ATLTRY(pChunk = new CMFCFilterChunkValueImpl);
		if (pChunk != nullptr)
		{
			pChunk->SetTextValue(PKEY_Search_Contents, value, CHUNK_TEXT);
			SetChunkValue(pChunk);
		}
	}
}

#endif // SHARED_HANDLERS

// CMaxDoc diagnostics

#ifdef _DEBUG
void CMaxDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CMaxDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG


// CMaxDoc commands
