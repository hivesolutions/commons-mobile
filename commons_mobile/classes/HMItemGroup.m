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

#import "HMItemGroup.h"

@implementation HMItemGroup

@synthesize items = _items;

- (id)init {
    // invokes the parent constructor
    self = [super init];

    // creates the items
    NSMutableArray *items = [[NSMutableArray alloc] init];

    // sets the attributes
    self.items = items;

    // releases the objects
    [items release];

    // returns the instance
    return self;
}

- (id)initWithIdentifier:(NSString *)identifier {
    // invokes the parent constructor
    self = [super initWithIdentifier:identifier];

    // creates the items
    NSMutableArray *items = [[NSMutableArray alloc] init];

    // sets the attributes
    self.items = items;

    // releases the objects
    [items release];

    // returns the instance
    return self;
}

- (void)dealloc {
    // releases the items
    [_items release];

    // calls the super
    [super dealloc];
}

- (void)addItem:(HMItem *)item {
    // adds the item to the items list
    [self.items addObject:item];
}

- (HMItem *)getItem:(NSIndexPath *)indexPath {
    // retrieves the item in the first index
    NSUInteger index = [indexPath indexAtPosition:0];
    HMItem *item = [self.items objectAtIndex:index];

    // retrieves the item in the index
    if(indexPath.length > 1) {
        // retrieves the indexes
        NSUInteger numberIndexes = indexPath.length;
        NSUInteger *indexes = malloc(sizeof(NSUInteger) * numberIndexes);
        [indexPath getIndexes:indexes];

        // creates the new index path
        NSUInteger *newIndexPointer = indexes + 1;
        NSUInteger newNumberIndexes = numberIndexes - 1;
        NSIndexPath *newIndexPath = [[NSIndexPath alloc] initWithIndexes:newIndexPointer length:newNumberIndexes];

        // retrieves the next item in the path
        HMItemGroup *itemGroup = (HMItemGroup *) item;
        item = [itemGroup getItem:newIndexPath];

        // frees the indexes
        free(indexes);

        // releases the new index path
        [newIndexPath release];
    }

    // returns the item
    return item;
}

@end
