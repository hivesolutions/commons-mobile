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
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2012 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "HMItemGroup.h"

@implementation HMItemGroup

@synthesize items = _items;

- (void)dealloc {
    // releases the items
    [_items release];

    // calls the super
    [super dealloc];
}

- (void)initStructures {
    // calls the super
    [super initStructures];

    // creates the items
    NSMutableArray *items = [[NSMutableArray alloc] init];

    // sets the attributes
    self.items = items;

    // releases the objects
    [items release];
}

- (void)addItem:(HMItem *)item {
    // adds the item to the items list
    [self.items addObject:item];
}

- (HMItem *)getItem:(NSInteger)index {
    // initializes the item index
    int itemIndex = -1;

    // for each item in the items list
    for(HMItem *item in self.items) {
        // in case the item is in a
        // deleted transient state
        if(item.transientState == HMItemStateOld) {
            // continues to exclude
            // the item from the count
            continue;
        }

        // increases the item index
        itemIndex++;

        // in case the item index
        // matches the specified index
        if(itemIndex == index) {
            // returns the item
            // since it was found
            return item;
        }

        // in case the item index
        // surpassed the specified index
        if(itemIndex > index) {
            // breaks since no
            // item was found
            break;
        }
    }

    // returns nil to indicate
    // that no item was found
    return nil;
}

- (HMItem *)getItemAtIndexPath:(NSIndexPath *)indexPath {
    // retrieves the item in the first index
    NSUInteger index = [indexPath indexAtPosition:0];
    HMItem *item = [self getItem:index];

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
        item = [itemGroup getItemAtIndexPath:newIndexPath];

        // frees the indexes
        free(indexes);

        // releases the new index path
        [newIndexPath release];
    }

    // returns the item
    return item;
}

- (void)removeItemAtIndexPath:(NSIndexPath *)indexPath {
    // retrieves the index path without the last index
    NSIndexPath *lastItemGroupIndexPath = [indexPath indexPathByRemovingLastIndex];

    // retrieves the last index path index
    int lastIndexPathIndex = indexPath.length - 1;

    // retrieves the index of the
    // item that will be removed
    NSUInteger removeIndex = [indexPath indexAtPosition:lastIndexPathIndex];

    // retrieves the last item group
    HMItemGroup *itemGroup = (HMItemGroup *) [self getItemAtIndexPath:lastItemGroupIndexPath];

    // removes the item from the item group
    [itemGroup.items removeObjectAtIndex:removeIndex];
}

- (void)flush:(BOOL)transient {
    // collects the transient items
    for(HMItem *item in self.items) {
        // in case the flush is transient
        if(transient) {
            // sets the state as the transient state
            self.state = self.transientState;
        } else {
            // for each transient state
            switch (self.transientState) {
                // in case the item
                // transient state is new
                case HMItemStateNew:
                    // sets the state as none
                    self.state = HMItemStateNone;

                    // breaks the switch
                    break;

                // in case the item
                // transient state is old
                case HMItemStateOld:
                    // sets the state as existent
                    self.state = HMItemStateExistent;

                    // breaks the switch
                    break;

                // in case the item transient
                // state is another state
                default:
                    // sets the state as existent
                    self.state = HMItemStateExistent;

                    // breaks the switch
                    break;
            }
        }

        // in case the item is a item group
        if([item isKindOfClass:[HMItemGroup class]]) {
            // casts the item to an item group
            HMItemGroup *itemItemGroup = (HMItemGroup *) item;

            // flushes the item group
            [itemItemGroup flush:transient];
        }
    }
}

- (void)commit {
    // creates an array where to
    // store the items that will be removed
    NSMutableArray *removeItems = [[NSMutableArray alloc] init];

    // for each item in the item group
    for(HMItem *item in self.items) {
        // for each item transient state
        switch(item.transientState) {
            // in case the item transient
            // state is old
            case HMItemStateOld:
                // adds the item to the list of
                // items that will be removed
                [removeItems addObject:item];

                // breaks the switch
                break;

            // in case the item transient
            // state is another state
            default:
                // breaks the switch
                break;
        }

        // resets the item states
        item.state = HMItemStateExistent;
        item.transientState = HMItemStateExistent;

        // in case the item is a item group
        if([item isKindOfClass:[HMItemGroup class]]) {
            // casts the item to an item group
            HMItemGroup *itemItemGroup = (HMItemGroup *) item;

            // commits the item group
            [itemItemGroup commit];
        }
    }

    // for each item in the remove items list
    for(HMItem *item in removeItems) {
        // removes the items from the items list
        [self.items removeObject:item];
    }

    // releases the objects
    [removeItems release];
}

- (void)rollback {
    // creates an array where to
    // store the items that will be removed
    NSMutableArray *removeItems = [[NSMutableArray alloc] init];

    // for each item in the item group
    for(HMItem *item in self.items) {
        // for each item transient state
        switch(item.transientState) {
            // in case the item transient
            // state is new
            case HMItemStateNew:
                // adds the item to the list of
                // items that will be removed
                [removeItems addObject:item];

                // breaks the switch
                break;

                // in case the item transient
                // state is another state
            default:
                // breaks the switch
                break;
        }

        // resets the item states
        item.state = HMItemStateExistent;
        item.transientState = HMItemStateExistent;

        // in case the item is a item group
        if([item isKindOfClass:[HMItemGroup class]]) {
            // casts the item to an item group
            HMItemGroup *itemItemGroup = (HMItemGroup *) item;

            // rollsback the item group
            [itemItemGroup rollback];
        }
    }

    // for each item in the remove items list
    for(HMItem *item in removeItems) {
        // removes the items from the items list
        [self.items removeObject:item];
    }

    // releases the objects
    [removeItems release];
}

- (HMItem *)search:(NSString *)identifier {
    // searches for the item with the
    // specified identifier in the item group
    for(HMItem *item in self.items) {
        // returns the item in case it
        // matches the specified identifier
        if([item.identifier isEqualToString:identifier]) {
            return item;
        }

        // searches inside the object in case it
        // responds to the search selector
        if([item respondsToSelector:@selector(search:)]) {
            // casts the item to an item group
            HMItemGroup *itemGroup = (HMItemGroup *)item;

            // searches for the item
            // in the object
            item = [itemGroup search:identifier];

            // in case the item
            // was found
            if(item != nil) {
                // returns the item
                return item;
            }
        }
    }

    // returns default value
    return nil;
}

@end
