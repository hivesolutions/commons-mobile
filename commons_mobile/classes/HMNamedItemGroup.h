// Hive Mobile
// Copyright (C) 2008-2015 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2015 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

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
