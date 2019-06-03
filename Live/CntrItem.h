
// CntrItem.h : interface of the CLiveCntrItem class
//

#pragma once

class CLiveDoc;
class CLiveView;

class CLiveCntrItem : public COleDocObjectItem
{
	DECLARE_SERIAL(CLiveCntrItem)

// Constructors
public:
	CLiveCntrItem(CLiveDoc* pContainer = nullptr);
		// Note: pContainer is allowed to be null to enable IMPLEMENT_SERIALIZE
		//  IMPLEMENT_SERIALIZE requires the class have a constructor with
		//  zero arguments.  Normally, OLE items are constructed with a
		//  non-null document pointer

// Attributes
public:
	CLiveDoc* GetDocument()
		{ return reinterpret_cast<CLiveDoc*>(COleDocObjectItem::GetDocument()); }
	CLiveView* GetActiveView()
		{ return reinterpret_cast<CLiveView*>(COleDocObjectItem::GetActiveView()); }

public:
	virtual void OnChange(OLE_NOTIFICATION wNotification, DWORD dwParam);
	virtual void OnActivate();

protected:
	virtual void OnDeactivateUI(BOOL bUndoable);
	virtual BOOL OnChangeItemPosition(const CRect& rectPos);
	virtual BOOL OnShowControlBars(CFrameWnd* pFrameWnd, BOOL bShow);
	virtual BOOL CanActivate();

// Implementation
public:
	~CLiveCntrItem();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif
	virtual void Serialize(CArchive& ar);
};

