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
#import "HMAccessoryItem.h"
#import "HMFont.h"

/**
 * Enumeration defining the various
 * delete action types.
 */
typedef enum {
    HMTableCellItemDeleteActionTypeNone = 1,
    HMTableCellItemDeleteActionTypeClear,
    HMTableCellItemDeleteActionTypeDelete
} HMTableCellItemDeleteActionType;

/**
 * Enumeration defining the various separator styles.
 */
typedef enum  {
    HMTableCellItemSeparatorStylePlain = 1,
    HMTableCellItemSeparatorStyleDashed
} HMTableCellItemSeparatorStyle;

@interface HMTableCellItem : HMButtonItem<HMEditItem> {
    @private
    HMAccessoryItem *_accessory;
    BOOL _indentable;
    BOOL _clearable;
    BOOL _insertableRow;
    BOOL _deletableRow;
    HMTableCellItemDeleteActionType _deleteActionType;
    HMColor *_topSeparatorColor;
    HMColor *_bottomSeparatorColor;
    HMTableCellItemSeparatorStyle _topSeparatorStyle;
    HMTableCellItemSeparatorStyle _bottomSeparatorStyle;
    HMColor *_selectedTopSeparatorColor;
    HMColor *_selectedBottomSeparatorColor;
    HMTableCellItemSeparatorStyle _selectedTopSeparatorStyle;
    HMTableCellItemSeparatorStyle _selectedBottomSeparatorStyle;
}

/**
 * The table cell's accessory.
 */
@property (retain) HMAccessoryItem *accessory;

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

/**
 * The top separator color.
 */
@property (retain) HMColor *topSeparatorColor;

/**
 * The bottom separator color.
 */
@property (retain) HMColor *bottomSeparatorColor;

/**
 * The top separator style.
 */
@property (assign) HMTableCellItemSeparatorStyle topSeparatorStyle;

/**
 * The bottom separator style.
 */
@property (assign) HMTableCellItemSeparatorStyle bottomSeparatorStyle;

/**
 * The selected top separator color.
 */
@property (retain) HMColor *selectedTopSeparatorColor;

/**
 * The selected bottom separator color.
 */
@property (retain) HMColor *selectedBottomSeparatorColor;

/**
 * The selected top separator style.
 */
@property (assign) HMTableCellItemSeparatorStyle selectedTopSeparatorStyle;

/**
 * The selected bottom separator style.
 */
@property (assign) HMTableCellItemSeparatorStyle selectedBottomSeparatorStyle;

/**
 * Generates a table view cell component.
 */
- (UIView *)generateComponentTableViewCell;

/**
 * Generates a sub description table view cell component.
 */
- (UIView *)generateComponentSubDescriptionTableViewCell;

/**
 * Converts the separator style from the item
 * representation to the component representation.
 *
 * @param separatorStyle: The separator style.
 * @return The converted separator style.
 */
- (int)convertSeparatorStyle:(HMTableCellItemSeparatorStyle)separatorStyle;

@end
