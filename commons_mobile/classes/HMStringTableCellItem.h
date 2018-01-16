// Hive Mobile
// Copyright (c) 2008-2018 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2018 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

#import "Dependencies.h"

#import "HMItem.h"
#import "HMTableCellItem.h"

/**
 * The height of a cell with a single line.
 */
#define HM_STRING_TABLE_CELL_ITEM_SINGLE_LINE_HEIGHT 50

/**
 * The height of a cell with multiple lines.
 */
#define HM_STRING_TABLE_CELL_ITEM_MULTIPLE_LINES_HEIGHT 50

/**
 * Represents a table cell component
 * that allows displaying and editing
 * a string value.
 */
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
 * Indicates if the value should be
 * masked from the user's view.
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
 * Indicates if the description can
 * hold multiple lines.
 */
@property (assign) BOOL multipleLines;

/**
 * Specifies if the table cell should draw
 * a column separator between the name and
 * the description.
 */
@property (assign) BOOL drawColumnSeparator;

/**
 * Generates a plain string table view cell component.
 */
- (void)generateComponentPlainStringTableViewCell;

/**
 * Generates a column string table view cell component.
 */
- (void)generateComponentColumnStringTableViewCell;

/**
 * Generates a plain multiline string table view cell component.
 */
- (void)generateComponentPlainMultilineStringTableViewCell;

/**
 * Generates a column multiline string table view cell component.
 */
- (void)generateComponentColumnMultilineStringTableViewCell;

@end
