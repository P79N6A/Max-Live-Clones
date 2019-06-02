
// MaxView.cpp : implementation of the CMaxView class
//

#include "stdafx.h"
// SHARED_HANDLERS can be defined in an ATL project implementing preview, thumbnail
// and search filter handlers and allows sharing of document code with that project.
#ifndef SHARED_HANDLERS
#include "Max.h"
#endif

#include "MaxDoc.h"
#include "MaxView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CMaxView

IMPLEMENT_DYNCREATE(CMaxView, CView)

BEGIN_MESSAGE_MAP(CMaxView, CView)
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, &CView::OnFilePrintPreview)
END_MESSAGE_MAP()

// CMaxView construction/destruction

CMaxView::CMaxView() noexcept
{
	EnableActiveAccessibility();
	// TODO: add construction code here

}

CMaxView::~CMaxView()
{
}

BOOL CMaxView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CView::PreCreateWindow(cs);
}

// CMaxView drawing

void CMaxView::OnDraw(CDC* /*pDC*/)
{
	CMaxDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	if (!pDoc)
		return;

	// TODO: add draw code for native data here
}


// CMaxView printing

BOOL CMaxView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CMaxView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CMaxView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}


// CMaxView diagnostics

#ifdef _DEBUG
void CMaxView::AssertValid() const
{
	CView::AssertValid();
}

void CMaxView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CMaxDoc* CMaxView::GetDocument() const // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CMaxDoc)));
	return (CMaxDoc*)m_pDocument;
}
#endif //_DEBUG


// CMaxView message handlers
