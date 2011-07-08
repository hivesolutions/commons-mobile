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

#import "HMTableCellItem.h"

/**
 * The height of a cell with a single line.
 */
#define HM_STRING_TABLE_CELL_ITEM_SINGLE_LINE_HEIGHT 50

/**
 * The height of a cell with multiple lines.
 */
#define HM_STRING_TABLE_CELL_ITEM_MULTIPLE_LINES_HEIGHT 50

@interface HMStringTableCellItem : HMTableCellItem {
    @private
    BOOL _secure;
    NSString *_returnType;
    NSString *_autocapitalizationType;
    BOOL _returnDisablesEdit;
    BOOL _multipleLines;
    BOOL _drawColumnSeparator;
}

/**
 * Indicates if the value should be secured.
 */
@property (assign) BOOL secure;

/**
 * The cell's return type.
 */
@property (retain) NSString *returnType;

/**
 * The cell's auto capitalization type.
 */
@property (retain) NSString *autocapitalizationType;

/**
 * Indicates if the edit mode should
 * be disabled on return.
 */
@property (assign) BOOL returnDisablesEdit;

/**
 * Indicates if the cell can hold
 * multiple lines.
 */
@property (assign) BOOL multipleLines;

/**
 * Specifies if the table cell has a column separator.
 */
@property (assign) BOOL drawColumnSeparator;

/**
 * Generates a plain string table view cell component.
 */
- (UIView *)generateComponentPlainStringTableViewCell;

/**
 * Generates a column string table view cell component.
 */
- (UIView *)generateComponentColumnStringTableViewCell;

/**
 * Generates a plain multiline string table view cell component.
 */
- (UIView *)generateComponentPlainMultilineStringTableViewCell;

/**
 * Generates a column multiline string table view cell component.
 */
- (UIView *)generateComponentColumnMultilineStringTableViewCell;

@end
