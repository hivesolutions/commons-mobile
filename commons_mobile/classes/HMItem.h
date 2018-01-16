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

#import "Dependencies.h"

#import "HMFont.h"
#import "HMColor.h"
#import "HMImage.h"
#import "HMPoint.h"

/**
 * The name font size.
 */
#define HM_ITEM_NAME_FONT_SIZE 12

/**
 * The description font size.
 */
#define HM_ITEM_DESCRIPTION_FONT_SIZE 15

/**
 * The sub description font size.
 */
#define HM_ITEM_SUB_DESCRIPTION_FONT_SIZE 15

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

/**
 * Enumeration defining the
 * various text alignments.
 */
typedef enum {
    HMTextAlignmentLeft = 1,
    HMTextAlignmentCenter,
    HMTextAlignmentRight
} HMTextAlignment;

/**
 * Enumeration defining the various
 * horizontal anchors.
 */
typedef enum  {
    HMItemHorizontalAnchorNone = 1,
    HMItemHorizontalAnchorLeft,
    HMItemHorizontalAnchorRight
} HMItemHorizontalAnchor;

/**
 * Enumeration defining the various
 * vertical anchors.
 */
typedef enum  {
    HMItemVerticalAnchorNone = 1,
    HMItemVerticalAnchorTop,
    HMItemVerticalAnchorBottom
} HMItemVerticalAnchor;

/**
 * Represents a basic visual component.
 */
@interface HMItem : NSObject {
    @private
    HMItemState _state;
    HMItemState _transientState;
    NSString *_identifier;
    NSString *_name;
    HMFont *_nameFont;
    HMColor *_nameColor;
    HMColor *_nameColorHighlighted;
    HMColor *_nameShadowColor;
    NSNumber *_nameNumberLines;
    HMTextAlignment _nameAlignment;
    HMPoint *_namePosition;
    HMItemHorizontalAnchor _nameHorizontalAnchor;
    HMItemVerticalAnchor _nameVerticalAnchor;
    NSNumber *_nameWidth;
    NSString *_description;
    HMFont *_descriptionFont;
    HMColor *_descriptionColor;
    HMColor *_descriptionColorHighlighted;
    HMColor *_descriptionShadowColor;
    NSNumber *_descriptionNumberLines;
    HMTextAlignment _descriptionAlignment;
    HMPoint *_descriptionPosition;
    HMItemHorizontalAnchor _descriptionHorizontalAnchor;
    HMItemVerticalAnchor _descriptionVerticalAnchor;
    NSNumber *_descriptionWidth;
    NSString *_subDescription;
    HMFont *_subDescriptionFont;
    HMColor *_subDescriptionColor;
    HMColor *_subDescriptionColorHighlighted;
    HMColor *_subDescriptionShadowColor;
    NSNumber *_subDescriptionNumberLines;
    HMTextAlignment _subDescriptionAlignment;
    HMPoint *_subDescriptionPosition;
    HMItemHorizontalAnchor _subDescriptionHorizontalAnchor;
    HMItemVerticalAnchor _subDescriptionVerticalAnchor;
    NSNumber *_subDescriptionWidth;
    NSString *_defaultValue;
    HMColor *_borderColor;
    HMColor *_backgroundColor;
    NSArray *_backgroundColors;
    NSArray *_selectedBackgroundColors;
    float _width;
    float _height;
    BOOL _focusEdit;
    BOOL _mutableParent;
    NSObject *_data;
    NSMutableArray *_subItems;
    UIView *_component;
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
 * The item's name color when the
 * item is highlighted.
 */
@property (retain) HMColor *nameColorHighlighted;

/**
 * The item's name shadow color.
 */
@property (retain) HMColor *nameShadowColor;

/**
 * The item name's number of lines,
 * with zero representing infinite lines.
 */
@property (retain) NSNumber *nameNumberLines;

/**
 * The item name's text alignment.
 */
@property (assign) HMTextAlignment nameAlignment;

/**
 * The item name's position.
 */
@property (retain) HMPoint *namePosition;

/**
 * The item name's horizontal anchor,
 * stating the name position's horizontal
 * origin when it is defined.
 */
@property (assign) HMItemHorizontalAnchor nameHorizontalAnchor;

/**
 * The item name's vertical anchor, stating
 * the name position's vertical origin when
 * it is defined.
 */
@property (assign) HMItemVerticalAnchor nameVerticalAnchor;

/**
 * The item name's width.
 */
@property (retain) NSNumber *nameWidth;

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
 * The item's description color when the
 * item is highlighted.
 */
@property (retain) HMColor *descriptionColorHighlighted;

/**
 * The item's description shadow color.
 */
@property (retain) HMColor *descriptionShadowColor;

/**
 * The item description's number of lines,
 * with zero representing infinite lines.
 */
@property (retain) NSNumber *descriptionNumberLines;

/**
 * The item description's text alignment.
 */
@property (assign) HMTextAlignment descriptionAlignment;

/**
 * The item description's horizontal
 * anchor, stating the description
 * position's horizontal origin when
 * it is defined.
 */
@property (assign) HMItemHorizontalAnchor descriptionHorizontalAnchor;

/**
 * The item description's vertical
 * anchor, stating the description
 * position's vertical origin when
 * it is defined.
 */
@property (assign) HMItemVerticalAnchor descriptionVerticalAnchor;

/**
 * The item description's position.
 */
@property (retain) HMPoint *descriptionPosition;

/**
 * The item description's width.
 */
@property (retain) NSNumber *descriptionWidth;

/**
 * The item's sub description.
 */
@property (retain) NSString *subDescription;

/**
 * The item's sub description font.
 */
@property (retain) HMFont *subDescriptionFont;

/**
 * The item's sub description color.
 */
@property (retain) HMColor *subDescriptionColor;

/**
 * The item's sub description color when the
 * item is highlighted.
 */
@property (retain) HMColor *subDescriptionColorHighlighted;

/**
 * The item's sub description shadow color.
 */
@property (retain) HMColor *subDescriptionShadowColor;

/**
 * The item sub description's number of lines,
 * with zero representing infinite lines.
 */
@property (retain) NSNumber *subDescriptionNumberLines;

/**
 * The item sub description's text alignment.
 */
@property (assign) HMTextAlignment subDescriptionAlignment;

/**
 * The item sub description's horizontal
 * anchor, stating the description
 * position's horizontal origin when
 * it is defined.
 */
@property (assign) HMItemHorizontalAnchor subDescriptionHorizontalAnchor;

/**
 * The item sub description's vertical
 * anchor, stating the description
 * position's vertical origin when
 * it is defined.
 */
@property (assign) HMItemVerticalAnchor subDescriptionVerticalAnchor;

/**
 * The item sub description's position.
 */
@property (retain) HMPoint *subDescriptionPosition;

/**
 * The item sub description's width.
 */
@property (retain) NSNumber *subDescriptionWidth;

/**
 * The item's default value.
 */
@property (retain) NSString *defaultValue;

/**
 * The item's border color.
 */
@property (retain) HMColor *borderColor;

/**
 * The item's background color.
 */
@property (retain) HMColor *backgroundColor;

/**
 * The item's background colors.
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
 * The item's width.
 */
@property (assign) float width;

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
 * This items that hierarchically
 * below this item.
 */
@property (retain) NSMutableArray *subItems;

/**
 * The component that represents
 * this item.
 */
@property (retain) UIView *component;

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
 * Constructs the structures.
 */
- (void)constructStructures;

/**
 * Generates the component
 * that represents this item.
 */
- (void)generateComponent;

/**
 * Converts the text alignment from the item
 * representation to the component representation.
 *
 * @param textAlignment The text alignment.
 * @return The converted text alignment.
 */
- (UITextAlignment)convertTextAlignment:(HMTextAlignment)textAlignment;

/**
 * Converts the horizontal anchor from the item
 * representation to the component representation.
 *
 * @param horizontalAnchor The horizontal anchor.
 * @return The converted horizontal anchor.
 */
- (int)convertHorizontalAnchor:(HMItemHorizontalAnchor)horizontalAnchor;

/**
 * Converts the vertical anchor from the item
 * representation to the component representation.
 *
 * @param horizontalAnchor The vertical anchor.
 * @return The converted vertical anchor.
 */
- (int)convertVerticalAnchor:(HMItemVerticalAnchor)verticalAnchor;

/**
 * Converts a list of hm colors to a list of ui colors.
 *
 * @param colors List of hm colors.
 * @return List of ui colors.
 */
- (NSArray *)convertColors:(NSArray *)colors;

/**
 * Converts an hm point to a ns value with a cg point.
 *
 * @param position The hm point object.
 * @return The correspondent ns value with cg point.
 */
- (NSValue *)convertPosition:(HMPoint *)position;

@end
