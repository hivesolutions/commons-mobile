// Hive Mobile
// Copyright (c) 2008-2016 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2016 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

#import "Dependencies.h"

#import "HMItem.h"
#import "HMSearchItem.h"

/**
 * Represents an item group where
 * items are associated to a name.
 */
@interface HMNamedItemGroup : HMItem<HMSearchItem> {
    @private
    NSMutableDictionary *_items;
}

/**
 * The group's items.
 */
@property (retain) NSMutableDictionary *items;

/**
 * Adds an item to the item group for the
 * the given key.
 *
 * @param key The key to be used to identify
 * the item in the group.
 * @param item The item to add to the group.
 */
- (void)addItem:(NSString *)key item:(HMItem *)item;

/**
 * Retrieves an item from the item group.
 *
 * @param key The key that references the
 * desired item.
 * @return Returns the item at the specified
 * key.
 */
- (HMItem *)getItem:(NSString *)key;

@end
