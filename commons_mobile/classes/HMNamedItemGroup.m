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

#import "HMNamedItemGroup.h"

@implementation HMNamedItemGroup

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
    NSMutableDictionary *items = [[NSMutableDictionary alloc] init];

    // sets the attributes
    self.items = items;

    // releases the objects
    [items release];
}

- (void)addItem:(NSString *)key item:(HMItem *)item {
    // adds the item to the items dicitonary
    [self.items setObject:item forKey:key];
}

- (HMItem *)getItem:(NSString *)key {
    // retrieves the item for the key
    HMItem *item = [self.items objectForKey:key];

    // returns the item
    return item;
}

- (HMItem *)search:(NSString *)identifier {
    // retrieves the item group enumerator
    NSEnumerator *itemGroupEnumerator = [self.items objectEnumerator];

    // allocates the object
    id object;

    // searches for the item with the
    // specified identifier in the item group
    while((object = [itemGroupEnumerator nextObject])) {
        // casts the object to an item
        HMItem *item = (HMItem *) object;

        // returns the item in case it
        // matches the specified identifier
        if([item.identifier isEqualToString:identifier]) {
            return item;
        }

        // searches inside the object in case it
        // responds to the search selector
        if([object respondsToSelector:@selector(search:)]) {
            // searches for the item
            // in the object
            item = [object search:identifier];

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
