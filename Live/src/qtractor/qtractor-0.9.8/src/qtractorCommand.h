// qtractorCommand.h
//
/****************************************************************************
   Copyright (C) 2005-2016, rncbc aka Rui Nuno Capela. All rights reserved.

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License along
   with this program; if not, write to the Free Software Foundation, Inc.,
   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

*****************************************************************************/

#ifndef __qtractorCommand_h
#define __qtractorCommand_h

#include "qtractorList.h"

#include <QObject>
#include <QString>

// Forward declarations.
class QAction;


//----------------------------------------------------------------------
// class qtractorCommand - declaration.
//

class qtractorCommand : public qtractorList<qtractorCommand>::Link
{
public:

	// Constructor.
	qtractorCommand(const QString& sName)
		: m_sName(sName), m_flags(Refresh) {}

	// Virtual destructor.
	virtual ~qtractorCommand() {}

	// Descriptive command name accessors.
	void setName(const QString& sName) { m_sName = sName; }
	const QString& name() const { return m_sName; }

	// Command flags.
	enum Flag {
		None = 0, AutoDelete = 1, Refresh = 2,
		Clear = 4, Select = 8, Reset = 16,
		ClearSelect = Clear | Select,
		ClearSelectReset = ClearSelect | Reset
	};

	// Command flags accessor.
	unsigned int flags() const { return m_flags; }

	// Auto-removal/deletion flag accessors.
	void setAutoDelete(bool bAutoDelete)
		{ setFlags(AutoDelete, bAutoDelete); }
	bool isAutoDelete() const
		{ return isFlags(AutoDelete); }

	// Contents-refresh accessors.
	void setRefresh(bool bRefresh)
		{ setFlags(Refresh, bRefresh); }
	bool isRefresh() const
		{ return isFlags(Refresh); }

	// Selection clear/reset accessors.
	void setClearSelect(bool bClearSelect)
		{ setFlags(ClearSelect, bClearSelect); }
	bool isClearSelect() const
		{ return isFlags(ClearSelect); }

	void setClearSelectReset(bool bClearSelectReset)
		{ setFlags(ClearSelectReset, bClearSelectReset); }
	bool isClearSelectReset() const
		{ return isFlags(ClearSelectReset); }

	// Cannonical command methods.
	virtual bool redo() = 0;
	virtual bool undo() = 0;

protected:

	// Discrete flag accessors.
	void setFlags(unsigned int flags, bool bOn = true)
		{ if (bOn) m_flags |= flags; else m_flags &= ~flags; }

	bool isFlags(unsigned int flags) const
		{ return ((m_flags & flags) == flags); }

private:

	// Instance variables.
	QString      m_sName;
	unsigned int m_flags;
};


//----------------------------------------------------------------------
// class qtractorCommandList - declaration.
//

class qtractorCommandList : public QObject
{
	Q_OBJECT

public:

	// Constructor.
	qtractorCommandList();

	// Destructor.
	virtual ~qtractorCommandList();

	// Command stack cleaner.
	void clear();
	
	// Command cursor accessors.
	qtractorCommand *lastCommand() const;
	qtractorCommand *nextCommand() const;

	// Remove last command from command chain.
	void removeLastCommand();

	// Special backout method (EXPERIMENTAL).
	void backout(qtractorCommand *pCommand);

	// Cannonical command methods.
	bool push(qtractorCommand *pCommand);
	bool exec(qtractorCommand *pCommand);

	bool undo();
	bool redo();

	// Command action update helper.
	void updateAction(QAction *pAction, qtractorCommand *pCommand) const;

signals:

	// Command update notification.
	void updateNotifySignal(unsigned int);

private:

	// Instance variables.
	qtractorList<qtractorCommand> m_commands;

	qtractorCommand *m_pLastCommand;
};


#endif	// __qtractorCommand_h

// end of qtractorCommand.h
