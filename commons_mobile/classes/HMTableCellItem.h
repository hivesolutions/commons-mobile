// Hive Mobile
// Copyright (C) 2008 Hive Solutions Lda.
//
// This file is part of Hive Mobile.
//
// Hive Mobile is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Hive Mobile is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Hive Mobile. If not, see <http://www.gnu.org/licenses/>.

// __author__    = Tiago Silva <tsilva@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "Dependencies.h"

#import "HMButtonItem.h"
#import "HMEditItem.h"

/**
 * Enumeration defining the various
 * delete action types.
 */
typedef enum {
    HMTableCellItemDeleteActionTypeNone = 1,
    HMTableCellItemDeleteActionTypeClear,
    HMTableCellItemDeleteActionTypeDelete
} HMTableCellItemDeleteActionType;

@interface HMTableCellItem : HMButtonItem<HMEditItem> {
    @private
    NSString *_accessoryType;
    NSString *_accessoryValue;
    BOOL _indentable;
    BOOL _clearable;
    BOOL _insertableRow;
    BOOL _deletableRow;
    HMTableCellItemDeleteActionType _deleteActionType;
}

/**
 * The accessory type to be used in the table cell.
 */
@property (retain) NSString *accessoryType;

/**
 * The value displayed in the accessory.
 */
@property (retain) NSString *accessoryValue;

/**
 * Specifies if the cell is indentable.
 */
@property (assign) BOOL indentable;

/**
 * Specifies if the cell is clearable.
 */
@property (assign) BOOL clearable;

/**
 * Specifies if the row is insertable.
 */
@property (assign) BOOL insertableRow;

/**
 * Specifies if the row is deletable.
 */
@property (assign) BOOL deletableRow;

/**
 * Specifies the action that will be
 * performed when a row deletion action
 * is performed over this table cell.
 */
@property (assign) HMTableCellItemDeleteActionType deleteActionType;

@end
