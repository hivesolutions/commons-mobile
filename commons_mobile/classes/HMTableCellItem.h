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

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "HMButtonItem.h"

@interface HMTableCellItem : HMButtonItem {
    @private NSString *_accessoryType;
}

@property (retain) NSString *accessoryType;

/**
* Constructor of the class.
*
* @param identifier The identifier of the
* table cell item.
* @param name The name of the table cell item.
* @param icon The path to the table cell item's icon.
* @param highlightedIcon The path to the
* table cell item's icon when it is highlighted.
* @param accessoryType The desired type of
* accessory view.
* @param selectable Indicates if the table cell
* item is selectable.
* @return The table cell item instance.
*/
- (id)initWithIdentifier:(NSString *)identifier name:(NSString *)name icon:(NSString *)icon highlightedIcon:(NSString *)highlightedIcon selectable:(BOOL)selectable accessoryType:(NSString *)accessoryType;

@end
