// Hive Mobile
// Copyright (c) 2008-2019 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2019 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

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
@synthesize nameWidth = _nameWidth;
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
@synthesize descriptionWidth = _descriptionWidth;
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
@synthesize subDescriptionWidth = _subDescriptionWidth;
@synthesize defaultValue = _defaultValue;
@synthesize borderColor = _borderColor;
@synthesize backgroundColor = _backgroundColor;
@synthesize backgroundColors = _backgroundColors;
@synthesize selectedBackgroundColors = _selectedBackgroundColors;
@synthesize width = _width;
@synthesize height = _height;
@synthesize focusEdit = _focusEdit;
@synthesize mutableParent = _mutableParent;
@synthesize data = _data;
@synthesize subItems = _subItems;
@synthesize component = _component;

- (id)init {
    // invokes the parent constructor
    self = [super init];

    // initializes the structures
    [self initStructures];

    // constructs the structures
    [self constructStructures];

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

    // constructs the structures
    [self constructStructures];

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

    // releases the name number lines
    [_nameNumberLines release];

    // releases the name width
    [_nameWidth release];

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

    // releases the description number liness
    [_descriptionNumberLines release];

    // releases the description with
    [_descriptionWidth release];

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

    // releases the sub description number lines
    [_subDescriptionNumberLines release];

    // releases the sub description position
    [_subDescriptionPosition release];

    // releases the sub description width
    [_subDescriptionWidth release];

    // releases the default value
    [_defaultValue release];

    // releases the border color
    [_borderColor release];

    // releases the background color
    [_backgroundColor release];

    // releases the background colors
    [_backgroundColors release];

    // releases the selected background colors
    [_selectedBackgroundColors release];

    // releases the data
    [_data release];

    // releases the sub items
    [_subItems release];

    // releases the component
    [_component release];

    // calls the super
    [super dealloc];
}

- (void)initStructures {
    // creates the fonts
    HMFont *nameFont = [[HMFont alloc] initWithFontName:@"Helvetica-Bold" size:HM_ITEM_NAME_FONT_SIZE];
    HMFont *descriptionFont = [[HMFont alloc] initWithFontName:@"Helvetica-Bold" size:HM_ITEM_DESCRIPTION_FONT_SIZE];
    HMFont *subDescriptionFont = [[HMFont alloc] initWithFontName:@"Helvetica-Bold" size:HM_ITEM_SUB_DESCRIPTION_FONT_SIZE];

    // creates the colors
    HMColor *blackColor = [[HMColor alloc] initWithColorRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    HMColor *whiteColor = [[HMColor alloc] initWithColorRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    HMColor *grayColor = [[HMColor alloc] initWithColorRed:0.4 green:0.4 blue:0.4 alpha:1];
    HMColor *nameColor = [[HMColor alloc] initWithColorRed:0.32 green:0.4 blue:0.57 alpha:1.0];

    // creates the background colors
    NSArray *selectedBackgroundColors = [[NSArray alloc] initWithObjects:grayColor, nil];

    // creates the sub items array
    NSMutableArray *subItems = [[NSMutableArray alloc] init];

    // sets the default attributes
    self.state = HMItemStateExistent;
    self.transientState = HMItemStateExistent;
    self.nameFont = nameFont;
    self.nameColor = nameColor;
    self.nameColorHighlighted = nameColor;
    self.nameAlignment = HMTextAlignmentLeft;
    self.nameHorizontalAnchor = HMItemHorizontalAnchorNone;
    self.nameVerticalAnchor = HMItemVerticalAnchorNone;
    self.descriptionFont = descriptionFont;
    self.descriptionColor = blackColor;
    self.descriptionColorHighlighted = blackColor;
    self.descriptionAlignment = HMTextAlignmentLeft;
    self.descriptionHorizontalAnchor = HMItemHorizontalAnchorNone;
    self.descriptionVerticalAnchor = HMItemVerticalAnchorNone;
    self.subDescriptionFont = subDescriptionFont;
    self.subDescriptionColor = blackColor;
    self.subDescriptionColorHighlighted = blackColor;
    self.subDescriptionAlignment = HMTextAlignmentLeft;
    self.subDescriptionHorizontalAnchor = HMItemHorizontalAnchorNone;
    self.subDescriptionVerticalAnchor = HMItemVerticalAnchorNone;
    self.backgroundColor = whiteColor;
    self.selectedBackgroundColors = selectedBackgroundColors;
    self.height = HM_ITEM_HEIGHT;
    self.focusEdit = NO;
    self.mutableParent = NO;
    self.subItems = subItems;

    // releases the objects
    [subItems release];
    [selectedBackgroundColors release];
    [nameColor release];
    [grayColor release];
    [whiteColor release];
    [blackColor release];
    [subDescriptionFont release];
    [descriptionFont release];
    [nameFont release];
}

- (void)constructStructures {
}

- (void)generateComponent {
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
    // in case no colors are defined
    if(!colors) {
        // returns nil
        return nil;
    }

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

- (UIView *)component {
    // in case the component is not defined
    if(!_component) {
        // generates the component
        [self generateComponent];
    }

    // returns the component
    return _component;
}

- (void)setComponent:(UIView *)component {
    // in case the object is the same
    if(component == _component) {
        // returns immediately
        return;
    }

    // releases the object
    [_component release];

    // sets and retains the object
    _component = [component retain];
}

@end
