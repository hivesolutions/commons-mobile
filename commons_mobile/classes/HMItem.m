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

#import "HMItem.h"

@implementation HMItem

@synthesize state = _state;
@synthesize transientState = _transientState;
@synthesize identifier = _identifier;
@synthesize name = _name;
@synthesize nameFont = _nameFont;
@synthesize nameColor = _nameColor;
@synthesize nameColorHighlighted = _nameColorHighlighted;
@synthesize nameShadowColor = _nameShadowColor;
@synthesize nameNumberLines = _nameNumberLines;
@synthesize nameAlignment = _nameAlignment;
@synthesize namePosition = _namePosition;
@synthesize nameHorizontalAnchor = _nameHorizontalAnchor;
@synthesize nameVerticalAnchor = _nameVerticalAnchor;
@synthesize description = _description;
@synthesize descriptionFont = _descriptionFont;
@synthesize descriptionColor = _descriptionColor;
@synthesize descriptionColorHighlighted = _descriptionColorHighlighted;
@synthesize descriptionShadowColor = _descriptionShadowColor;
@synthesize descriptionNumberLines = _descriptionNumberLines;
@synthesize descriptionAlignment = _descriptionAlignment;
@synthesize descriptionPosition = _descriptionPosition;
@synthesize descriptionHorizontalAnchor = _descriptionHorizontalAnchor;
@synthesize descriptionVerticalAnchor = _descriptionVerticalAnchor;
@synthesize subDescription = _subDescription;
@synthesize subDescriptionFont = _subDescriptionFont;
@synthesize subDescriptionColor = _subDescriptionColor;
@synthesize subDescriptionColorHighlighted = _subDescriptionColorHighlighted;
@synthesize subDescriptionShadowColor = _subDescriptionShadowColor;
@synthesize subDescriptionNumberLines = _subDescriptionNumberLines;
@synthesize subDescriptionAlignment = _subDescriptionAlignment;
@synthesize subDescriptionPosition = _subDescriptionPosition;
@synthesize subDescriptionHorizontalAnchor = _subDescriptionHorizontalAnchor;
@synthesize subDescriptionVerticalAnchor = _subDescriptionVerticalAnchor;
@synthesize defaultValue = _defaultValue;
@synthesize borderColor = _borderColor;
@synthesize selectedBorderColor = _selectedBorderColor;
@synthesize backgroundColors = _backgroundColors;
@synthesize selectedBackgroundColors = _selectedBackgroundColors;
@synthesize height = _height;
@synthesize focusEdit = _focusEdit;
@synthesize mutableParent = _mutableParent;
@synthesize data = _data;
@synthesize subItems = _subItems;

- (id)init {
    // invokes the parent constructor
    self = [super init];

    // initializes the structures
    [self initStructures];

    // returns the instance
    return self;
}

- (id)initWithIdentifier:(NSString *)identifier {
    // invokes the parent constructor
    self = [super init];

    // sets the identifier
    self.identifier = identifier;

    // initializes the structures
    [self initStructures];

    // returns the instance
    return self;
}

- (void)dealloc {
    // releases the identifier
    [_identifier release];

    // releases the name
    [_name release];

    // releases the name font
    [_nameFont release];

    // releases the name color
    [_nameColor release];

    // releases the name color highlighted
    [_nameColorHighlighted release];

    // releases the name shadow color
    [_nameShadowColor release];

    // releases the description
    [_description release];

    // releases the description font
    [_descriptionFont release];

    // releases the description color
    [_descriptionColor release];

    // releases the description color highlighted
    [_descriptionColorHighlighted release];

    // releases the description shadow color
    [_descriptionShadowColor release];

    // releases the sub description
    [_subDescription release];

    // releases the sub description font
    [_subDescriptionFont release];

    // releases the sub description color
    [_subDescriptionColor release];

    // releases the sub description color highlighted
    [_subDescriptionColorHighlighted release];

    // releases the sub description shadow color
    [_subDescriptionShadowColor release];

    // releases the sub description position
    [_subDescriptionPosition release];

    // releases the default value
    [_defaultValue release];

    // releases the border color
    [_borderColor release];

    // releases the selected border color
    [_selectedBorderColor release];

    // releases the background colors
    [_backgroundColors release];

    // releases the selected background colors
    [_selectedBackgroundColors release];

    // releases the data
    [_data release];

    // releases the sub items
    [_subItems release];

    // calls the super
    [super dealloc];
}

- (void)initStructures {
    // creates the fonts
    HMFont *nameFont = [HMFont fontWithName:@"Helvetica-Bold" size:HM_ITEM_NAME_FONT_SIZE];
    HMFont *descriptionFont = [HMFont fontWithName:@"Helvetica-Bold" size:HM_ITEM_DESCRIPTION_FONT_SIZE];
    HMFont *subDescriptionFont = [HMFont fontWithName:@"Helvetica-Bold" size:HM_ITEM_SUB_DESCRIPTION_FONT_SIZE];

    // creates the colors
    HMColor *nameColor = [HMColor colorWithRed:0.32 green:0.4 blue:0.57 alpha:1.0];
    HMColor *descriptionColor = [HMColor blackColor];
    HMColor *subDescriptionColor = [HMColor blackColor];
    HMColor *borderColor = [HMColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1];
    HMColor *lightGrayColor = [HMColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1];
    HMColor *lightGreenColor = [HMColor colorWithRed:0.66 green:0.85 blue:0.36 alpha:1];
    HMColor *darkGreenColor = [HMColor colorWithRed:0.23 green:0.62 blue:0.27 alpha:1];

    // creates the background colors
    NSArray *backgroundColors = [[NSArray alloc] initWithObjects:lightGrayColor, nil];
    NSArray *selectedBackgroundColors = [[NSArray alloc] initWithObjects:lightGreenColor, darkGreenColor, nil];

    // creates the sub items array
    NSMutableArray *subItems = [[NSMutableArray alloc] init];

    // sets the default attributes
    self.state = HMItemStateExistent;
    self.transientState = HMItemStateExistent;
    self.nameFont = nameFont;
    self.nameColor = nameColor;
    self.nameColorHighlighted = nameColor;
    self.nameNumberLines = 1;
    self.nameAlignment = HMTextAlignmentRight;
    self.nameHorizontalAnchor = HMItemHorizontalAnchorNone;
    self.nameVerticalAnchor = HMItemVerticalAnchorNone;
    self.descriptionFont = descriptionFont;
    self.descriptionColor = descriptionColor;
    self.descriptionColorHighlighted = descriptionColor;
    self.descriptionNumberLines = 1;
    self.descriptionAlignment = HMTextAlignmentLeft;
    self.descriptionHorizontalAnchor = HMItemHorizontalAnchorNone;
    self.descriptionVerticalAnchor = HMItemVerticalAnchorNone;
    self.subDescriptionFont = subDescriptionFont;
    self.subDescriptionColor = subDescriptionColor;
    self.subDescriptionColorHighlighted = subDescriptionColor;
    self.subDescriptionNumberLines = 1;
    self.subDescriptionAlignment = HMTextAlignmentLeft;
    self.subDescriptionHorizontalAnchor = HMItemHorizontalAnchorNone;
    self.subDescriptionVerticalAnchor = HMItemVerticalAnchorNone;
    self.borderColor = borderColor;
    self.backgroundColors = backgroundColors;
    self.selectedBackgroundColors = selectedBackgroundColors;
    self.height = HM_ITEM_HEIGHT;
    self.focusEdit = NO;
    self.mutableParent = NO;
    self.subItems = subItems;

    // releases the objects
    [subItems release];
    [selectedBackgroundColors release];
    [backgroundColors release];
}

- (UIView *)generateComponent {
    return nil;
}

- (UITextAlignment)convertTextAlignment:(HMTextAlignment)textAlignment {
    // for each text alignment
    switch (textAlignment) {
            // in case the alignment is to the left
        case HMTextAlignmentLeft:
            // returns the left alignment
            return UITextAlignmentLeft;

            // in case the alignment is to the right
        case HMTextAlignmentRight:
            // returns the right alignment
            return UITextAlignmentRight;

            // in case the alignment is to the center
        case HMTextAlignmentCenter:
            // returns the center alignment
            return UITextAlignmentCenter;
    }

    // returns the default alignment
    return UITextAlignmentLeft;
}

- (int)convertHorizontalAnchor:(HMItemHorizontalAnchor)horizontalAnchor {
    // for each horizontal anchor
    switch (horizontalAnchor) {
            // in case the anchor is to the left
        case HMItemHorizontalAnchorLeft:
            // returns the left anchor
            return HMTableViewCellHorizontalAnchorLeft;

            // in case the anchor is to the right
        case HMItemHorizontalAnchorRight:
            // returns the right anchor
            return HMTableViewCellHorizontalAnchorRight;

            // in case the anchor is none
        case HMItemHorizontalAnchorNone:
            // returns the none anchor
            return HMTableViewCellHorizontalAnchorNone;
    }

    // returns the default anchor
    return HMTableViewCellHorizontalAnchorNone;
}

- (int)convertVerticalAnchor:(HMItemVerticalAnchor)verticalAnchor {
    // for each vertical anchor
    switch (verticalAnchor) {
            // in case the anchor is to the top
        case HMItemVerticalAnchorTop:
            // returns the top anchor
            return HMTableViewCellVerticalAnchorTop;

            // in case the anchor is to the bottom
        case HMItemVerticalAnchorBottom:
            // returns the bottom anchor
            return HMTableViewCellVerticalAnchorBottom;

            // in case the anchor is none
        case HMItemVerticalAnchorNone:
            // returns the none anchor
            return HMTableViewCellVerticalAnchorNone;
    }

    // returns the default anchor
    return HMTableViewCellVerticalAnchorNone;
}

- (NSArray *)convertColors:(NSArray *)colors {
    // initializes the converted colors array
    NSMutableArray *convertedColors = [[[NSMutableArray alloc] init] autorelease];

    // for each color
    for(HMColor *color in colors) {
        // converts it and adds it to the array
        [convertedColors addObject:color.UIColor];
    }

    // returns the converted colors
    return convertedColors;
}

- (NSValue *)convertPosition:(HMPoint *)position {
    // in case no position was specified
    if(!position) {
        // returns nil
        return nil;
    }

    // retrieves the position
    CGPoint positionPoint = position.CGPoint;

    // creates a value with the position
    NSValue *positionPointValue = [NSValue valueWithCGPoint:positionPoint];

    // returns the position point value
    return positionPointValue;
}

@end
