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

#import "HMAccessoryItem.h"

@implementation HMAccessoryItem

@synthesize margin = _margin;
@synthesize imageNormal = _imageNormal;
@synthesize imageHighlighted = _imageHighlighted;

- (void)dealloc {
    // releases the margin
    [_margin release];

    // releases the image normal
    [_imageNormal release];

    // releases the image highlighted
    [_imageHighlighted release];

    // calls the super
    [super dealloc];
}

- (void)generateComponent {
    // creates the accessory view
    HMAccessoryView *component = [[HMAccessoryView alloc] init];

    // sets the accessory view's attributes
    component.text = self.description;
    component.textFont = self.descriptionFont.UIFont;
    component.textColorNormal = self.descriptionColor.UIColor;
    component.textColorHighlighted = self.descriptionColorHighlighted.UIColor;
    component.textShadowColor = self.descriptionShadowColor.UIColor;
    component.margin = [self convertPosition:self.margin];
    component.imageNormal = self.imageNormal.UIImage;
    component.imageHighlighted = self.imageHighlighted.UIImage;

    // sets the objects
    self.component = component;

    // releases the objects
    [component release];
}

@end
