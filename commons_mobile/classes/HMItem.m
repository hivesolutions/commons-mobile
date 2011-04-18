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
@synthesize description = _description;
@synthesize defaultValue = _defaultValue;
@synthesize backgroundColor = _backgroundColor;
@synthesize selectedBackgroundColor = _selectedBackgroundColor;
@synthesize nameColor = _nameColor;
@synthesize nameShadowColor = _nameShadowColor;
@synthesize descriptionColor = _descriptionColor;
@synthesize descriptionShadowColor = _descriptionShadowColor;
@synthesize nameFont = _nameFont;
@synthesize descriptionFont = _descriptionFont;
@synthesize nameFontSize = _nameFontSize;
@synthesize descriptionFontSize = _descriptionFontSize;
@synthesize height = _height;
@synthesize focusEdit = _focusEdit;
@synthesize mutableParent = _mutableParent;
@synthesize data = _data;

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

    // releases the description
    [_description release];

    // releases the default value
    [_defaultValue release];

    // releases the background color
    [_backgroundColor release];

    // releases the name color
    [_nameColor release];

    // releases the name shadow color
    [_nameShadowColor release];

    // releases the description color
    [_descriptionColor release];

    // releases the description shadow color
    [_descriptionShadowColor release];

    // releases the name font
    [_nameFont release];

    // releases the description font
    [_descriptionFont release];

    // releases the selected background color
    [_selectedBackgroundColor release];

    // releases the data
    [_data release];

    // calls the super
    [super dealloc];
}

- (void)initStructures {
    // sets the default attributes
    self.state = HMItemStateExistent;
    self.transientState = HMItemStateExistent;
    self.backgroundColor = [HMColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1];
    self.selectedBackgroundColor = [HMColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1];
    self.nameColor = [HMColor colorWithRed:0.32 green:0.4 blue:0.57 alpha:1.0];
    self.descriptionColor = [HMColor colorWithRed:0 green:0 blue:0 alpha:1.0];
    self.nameFont = @"Helvetica-Bold";
    self.descriptionFont = @"Helvetica-Bold";
    self.nameFontSize = HM_ITEM_NAME_FONT_SIZE;
    self.descriptionFontSize = HM_ITEM_DESCRIPTION_FONT_SIZE;
    self.height = HM_ITEM_HEIGHT;
    self.focusEdit = NO;
    self.mutableParent = NO;
}

@end
