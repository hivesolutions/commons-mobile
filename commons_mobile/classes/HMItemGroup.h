// Hive Mobile
// Copyright (C) 2008-2014 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2014 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

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
