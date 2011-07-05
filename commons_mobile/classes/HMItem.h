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
#import "HMFont.h"

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

/**
 * Enumeration defining the
 * various item states.
 */
typedef enum {
    HMItemStateNone = 1,
    HMItemStateNew,
    HMItemStateExistent,
    HMItemStateOld
} HMItemState;

@interface HMItem : NSObject {
    @private
    HMItemState _state;
    HMItemState _transientState;
    NSString *_identifier;
    NSString *_name;
    HMFont *_nameFont;
    HMColor *_nameColor;
    HMColor *_nameShadowColor;
    NSString *_description;
    HMFont *_descriptionFont;
    HMColor *_descriptionColor;
    HMColor *_descriptionShadowColor;
    NSString *_defaultValue;
    HMColor *_borderColor;
    HMColor *_selectedBorderColor;
    NSArray *_backgroundColors;
    NSArray *_selectedBackgroundColors;
    float _height;
    BOOL _focusEdit;
    BOOL _mutableParent;
    NSObject *_data;
}

/**
 * The item's state.
 */
@property (assign) HMItemState state;

/**
 * The item's transient state.
 */
@property (assign) HMItemState transientState;

/**
 * The item's identifier.
 */
@property (retain) NSString *identifier;

/**
 * The item's name.
 */
@property (retain) NSString *name;

/**
 * The item's name font.
 */
@property (retain) HMFont *nameFont;

/**
 * The item's name color.
 */
@property (retain) HMColor *nameColor;

/**
 * The item's name shadow color.
 */
@property (retain) HMColor *nameShadowColor;

/**
 * The item's description.
 */
@property (retain) NSString *description;

/**
 * The item's description font.
 */
@property (retain) HMFont *descriptionFont;

/**
 * The item's description color.
 */
@property (retain) HMColor *descriptionColor;

/**
 * The item's description shadow color.
 */
@property (retain) HMColor *descriptionShadowColor;

/**
 * The item's default value.
 */
@property (retain) NSString *defaultValue;

/**
 * The item's border color.
 */
@property (retain) HMColor *borderColor;

/**
 * The item's border color when it's selected.
 */
@property (retain) HMColor *selectedBorderColor;

/**
 * List of hm color objects, representing
 * the background colors, when more than
 * one color is present, it represents
 * a gradient.
 */
@property (retain) NSArray *backgroundColors;

/**
 * List of hm color objects, representing
 * the selected background colors, when
 * more than one color is present, it
 * represents a gradient.
 */
@property (retain) NSArray *selectedBackgroundColors;

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
 * Indicates if the item is a
 * mutable parent.
 */
@property (assign) BOOL mutableParent;

/**
 * Stores data associated with item.
 */
@property (retain) NSObject *data;

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

/**
 * Generates the component
 * that represents this item.
 */
- (UIView *)generateComponent;

@end
