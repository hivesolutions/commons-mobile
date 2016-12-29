// Hive Mobile
// Copyright (c) 2008-2017 Hive Solutions Lda.
//
// This file is part of Hive Mobile.
//
// Hive Mobile is free software: you can redistribute it and/or modify
// it under the terms of the Apache License as published by the Apache
// Foundation, either version 2.0 of the License, or (at your option) any
// later version.
//
// Hive Mobile is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// Apache License for more details.
//
// You should have received a copy of the Apache License along with
// Hive Mobile. If not, see <http://www.apache.org/licenses/>.

// __author__    = João Magalhães <joamag@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2017 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

#import "Dependencies.h"

#import "HMFont.h"
#import "HMEditItem.h"
#import "HMButtonItem.h"
#import "HMAccessoryItem.h"

/**
 * The table cell item's default corner radius.
 */
#define HM_TABLE_CELL_ITEM_DEFAULT_CORNER_RADIUS 10

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

/**
 * Represents a table cell component.
 */
@interface HMTableCellItem : HMButtonItem<HMEditItem> {
    @private
    HMAccessoryItem *_accessory;
    BOOL _indentable;
    BOOL _clearable;
    BOOL _insertableRow;
    BOOL _deletableRow;
    HMTableCellItemDeleteActionType _deleteActionType;
    float _cornerRadius;
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
 * The table cell's accessory, which
 * is a component placed that appears
 * on the right side of the table cell.
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
 * The cell's corner radius.
 */
@property (assign) float cornerRadius;

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
 * The top separator color when the table cell is highlighted.
 */
@property (retain) HMColor *selectedTopSeparatorColor;

/**
 * The bottom separator color when the table cell is highlighted.
 */
@property (retain) HMColor *selectedBottomSeparatorColor;

/**
 * The top separator style when the table cell is highlighted.
 */
@property (assign) HMTableCellItemSeparatorStyle selectedTopSeparatorStyle;

/**
 * The bottom separator style when the table cell is highlighted.
 */
@property (assign) HMTableCellItemSeparatorStyle selectedBottomSeparatorStyle;

/**
 * Generates a table view cell component.
 */
- (void)generateComponentTableViewCell;

/**
 * Converts the separator style from the item
 * representation to the component representation.
 *
 * @param separatorStyle: The separator style.
 * @return The converted separator style.
 */
- (int)convertSeparatorStyle:(HMTableCellItemSeparatorStyle)separatorStyle;

@end
