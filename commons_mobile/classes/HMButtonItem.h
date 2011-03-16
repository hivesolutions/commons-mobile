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

// __author__    = João Magalhães <joamag@hive.pt> & Tiago Silva <tsilva@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "HMItem.h"

@interface HMButtonItem : HMItem {
    @private NSString *_icon;
    @private NSString *_highlightedIcon;
    @private BOOL _highlightable;
}

@property (retain) NSString *icon;
@property (retain) NSString *highlightedIcon;
@property (assign) BOOL highlightable;

/**
* Constructor of the class.
*
* @param identifier The identifier of the button item.
* @param name The name of the button item.
* @param icon The path to the button item's icon.
* @param highlightedIcon The path to the button item's
* icon when it is highlighted.
* @param highlightable Indicates if the button item is
* highlightable.
* @return The button item instance.
*/
- (id)initWithIdentifier:(NSString *)identifier name:(NSString *)name icon:(NSString *)icon highlightedIcon:(NSString *)highlightedIcon highlightable:(BOOL)highlightable;

@end
