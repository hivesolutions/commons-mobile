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

#import "HMTableMutableSectionItemGroup.h"

@implementation HMTableMutableSectionItemGroup

@synthesize addTableCellItem = _addTableCellItem;
@synthesize tableCellItemCreationDelegate = _tableCellItemCreationDelegate;

- (void)dealloc {
    // releases the add nib name
    [_addNibName release];

    // releases the add table cell item
    [_addTableCellItem release];

    // releases the table cell item creation delegate
    [_tableCellItemCreationDelegate release];

    // calls the super
    [super dealloc];
}

- (void)initStructures {
    // calls the super
    [super initStructures];

    // sets the attributes
    self.mutableParent = YES;
}

- (void)constructStructures {
    // calls the super
    [super constructStructures];

    // creates the add table cell item
    HMConstantStringTableCellItem *addTableCellItem = [[HMConstantStringTableCellItem alloc] initWithIdentifier:[NSString stringWithFormat:@"%@_add_item", self.identifier]];
    addTableCellItem.selectable = YES;
    addTableCellItem.selectableEdit = YES;
    addTableCellItem.indentable = YES;
    addTableCellItem.insertableRow = YES;

    // adds the add table cell
    // item to the items list
    [self addItem:addTableCellItem];

    // sets the attributes
    self.addTableCellItem = addTableCellItem;

    // releases the objects
    [addTableCellItem release];
}

- (Class)addViewController {
    return _addViewController;
}

- (void)setAddViewController:(Class)addViewController {
    // in case the object is the same
    if(addViewController == _addViewController) {
        // returns immediately
        return;
    }

    // releases the object
    [_addViewController release];

    // sets and retains the object
    _addViewController = [addViewController retain];

    // sets the add table cell item's edit view controller
    self.addTableCellItem.editViewController = addViewController;
}

- (NSString *)addNibName {
    return _addNibName;
}

- (void)setAddNibName:(NSString *)addNibName {
    // in case the object is the same
    if(addNibName == _addNibName) {
        // returns immediately
        return;
    }

    // releases the object
    [_addNibName release];

    // sets and retains the object
    _addNibName = [addNibName retain];

    // sets the add table cell item's edit nib name
    self.addTableCellItem.editNibName = addNibName;
}

- (NSArray *)dataItems {
    // retrieves the items count
    int count = self.items.count;

    // creates the data items mutable arrays
    NSMutableArray *dataItems = [[[NSMutableArray alloc] init] autorelease];

    // copies the items to the data items
    // array except the for the last one
    for(int index = 0; index < (count - 1); index++) {
        // retrieves the item
        HMItem *item = [self.items objectAtIndex:index];

        // in case the item's transient state is old
        // no need to include this element in the
        // data items
        if(item.transientState == HMItemStateOld) {
            // continues loop
            continue;
        }

        // adds the item to the data items
        [dataItems addObject:item];
    }

    // returns the data items
    return dataItems;
}

- (void)addItem:(HMItem *)item {
    // calculates the index
    // before the add item
    int index = self.items.count;
    index = index == 0 ? index : index - 1;

    // adds the item to the items list
    [self.items insertObject:item atIndex:index];
}

@end
