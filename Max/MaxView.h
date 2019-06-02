
// MaxView.h : interface of the CMaxView class
//

#pragma once


class CMaxView : public CView
{
protected: // create from serialization only
	CMaxView() noexcept;
	DECLARE_DYNCREATE(CMaxView)

// Attributes
public:
	CMaxDoc* GetDocument() const;

// Operations
public:

// Overrides
public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);

// Implementation
public:
	virtual ~CMaxView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in MaxView.cpp
inline CMaxDoc* CMaxView::GetDocument() const
   { return reinterpret_cast<CMaxDoc*>(m_pDocument); }
#endif

