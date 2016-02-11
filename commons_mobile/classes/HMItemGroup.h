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
 * Represents a group of items.
 */
@interface HMItemGroup : HMItem<HMSearchItem> {
    @private
    NSMutableArray *_items;
}

/**
 * The list of items that belong
 * to the item group.
 */
@property (retain) NSMutableArray *items;

/**
 * Adds an item to the item group.
 *
 * @param item The item to add to the group.
 */
- (void)addItem:(HMItem *)item;

/**
 * Retrieves an item from the item group.
 *
 * @param index The index that points
 * to the desired item.
 * @return Returns the item at the specified
 * index path.
 */
- (HMItem *)getItem:(NSInteger)index;

/**
 * Retrieves an item from the item group.
 *
 * @param indexPath The index path that points
 * to the desired item.
 * @return Returns the item at the specified
 * index path.
 */
- (HMItem *)getItemAtIndexPath:(NSIndexPath *)indexPath;

/**
 * Removes an item from the item group.
 *
 * @param indexPath The index path that points
 * to the desired item.
 */
- (void)removeItemAtIndexPath:(NSIndexPath *)indexPath;

/**
 * Flushes the item group, updating
 * the items' state.
 *
 * @param transient Indicates if the
 * transient state should be flushed.
 */
- (void)flush:(BOOL)transient;

/**
 * Rollsback the item group.
 */
- (void)rollback;

/**
 * Commits the item group.
 */
- (void)commit;

@end
