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

#import "HMStringTableCellItem.h"

@implementation HMStringTableCellItem

@synthesize secure = _secure;
@synthesize returnType = _returnType;
@synthesize autocapitalizationType = _autocapitalizationType;
@synthesize returnDisablesEdit = _returnDisablesEdit;

- (void)dealloc {
    // releases the return type
    [_returnType release];

    // releases the auto capitalization type
    [_autocapitalizationType release];

    // calls the super
    [super dealloc];
}

- (void)initStructures {
    // calls the super
    [super initStructures];

    // sets the default attributes
    self.insertableRow = NO;
    self.deletableRow = NO;
    self.editableCell = YES;
    self.indentable = YES;
    self.clearable = YES;
    self.secure = NO;
    self.returnDisablesEdit = NO;
    self.multipleLines = NO;
    self.autocapitalizationType = @"sentences";
}

- (BOOL)multipleLines {
    return _multipleLines;
}

- (void)setMultipleLines:(BOOL)multipleLines {
    // sets the attribute
    _multipleLines = multipleLines;

    // sets the cell's height to adapt to the number of lines
    if(multipleLines == YES) {
        self.height = HM_STRING_TABLE_CELL_ITEM_MULTIPLE_LINES_HEIGHT;
    } else {
        self.height = HM_STRING_TABLE_CELL_ITEM_SINGLE_LINE_HEIGHT;
    }
}

@end
