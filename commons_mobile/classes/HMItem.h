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

// __author__    = João Magalhães <joamag@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "Dependencies.h"

#import "HMColor.h"

/**
 * The name font size.
 */
#define HM_ITEM_NAME_FONT_SIZE 12

/**
 * The description font size.
 */
#define HM_ITEM_DESCRIPTION_FONT_SIZE 15

/**
 * The item's height.
 */
#define HM_ITEM_HEIGHT 50

@interface HMItem : NSObject {
    @private
    NSString *_identifier;
    NSString *_name;
    NSString *_description;
    NSString *_defaultValue;
    HMColor *_backgroundColor;
    HMColor *_selectedBackgroundColor;
    HMColor *_nameColor;
    HMColor *_descriptionColor;
    HMColor *_nameShadowColor;
    HMColor *_descriptionShadowColor;
    NSString *_nameFont;
    NSString *_descriptionFont;
    NSUInteger _nameFontSize;
    NSUInteger _descriptionFontSize;
    float _height;
    BOOL _focusEdit;
    NSDictionary *_data;
}

/**
 * The item's identifier.
 */
@property (retain) NSString *identifier;

/**
 * The item's name.
 */
@property (retain) NSString *name;

/**
 * The item's description.
 */
@property (retain) NSString *description;

/**
 * The item's default value.
 */
@property (retain) NSString *defaultValue;

/**
 * The item's background color.
 */
@property (retain) HMColor *backgroundColor;

/**
 * The item's selected background color.
 */
@property (retain) HMColor *selectedBackgroundColor;

/**
 * The item's name color.
 */
@property (retain) HMColor *nameColor;

/**
 * The item's name shadow color.
 */
@property (retain) HMColor *nameShadowColor;

/**
 * The item's description color.
 */
@property (retain) HMColor *descriptionColor;

/**
 * The item's description shadow color.
 */
@property (retain) HMColor *descriptionShadowColor;

/**
 * The item's name font.
 */
@property (retain) NSString *nameFont;

/**
 * The item's description font.
 */
@property (retain) NSString *descriptionFont;

/**
 * The item's name font size.
 */
@property (assign) NSUInteger nameFontSize;

/**
 * The item's description font size.
 */
@property (assign) NSUInteger descriptionFontSize;

/**
 * The item's height.
 */
@property (assign) float height;

/**
 * Indicates if the item should focus
 * when entering edit mode.
 */
@property (assign) BOOL focusEdit;

/**
 * Stores data associated with item.
 */
@property (retain) NSDictionary *data;

/**
 * Constructor of the class.
 *
 * @return The constructed instance.
 */
- (id)initWithIdentifier:(NSString *)identifier;

/**
 * Initializes the structures.
 */
- (void)initStructures;

@end
