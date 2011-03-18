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

#import "HMNamedItemGroup.h"

@implementation HMNamedItemGroup

@synthesize items = _items;

- (id)init {
    // invokes the parent constructor
    self = [super init];

    // creates the items
    NSMutableDictionary *items = [[NSMutableDictionary alloc] init];

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
    NSMutableDictionary *items = [[NSMutableDictionary alloc] init];

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

@end
