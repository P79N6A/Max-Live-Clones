
// SrvrItem.h : interface of the CLiveSrvrItem class
//

#pragma once

class CLiveSrvrItem : public CDocObjectServerItem
{
	DECLARE_DYNAMIC(CLiveSrvrItem)

// Constructors
public:
	CLiveSrvrItem(CLiveDoc* pContainerDoc);

// Attributes
	CLiveDoc* GetDocument() const
		{ return reinterpret_cast<CLiveDoc*>(CDocObjectServerItem::GetDocument()); }

// Overrides
	public:
	virtual BOOL OnDraw(CDC* pDC, CSize& rSize);
	virtual BOOL OnGetExtent(DVASPECT dwDrawAspect, CSize& rSize);

// Implementation
public:
	~CLiveSrvrItem();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
};

