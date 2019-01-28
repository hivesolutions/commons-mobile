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

#import "HMColor.h"

@implementation HMColor

@synthesize red = _red;
@synthesize green = _green;
@synthesize blue = _blue;
@synthesize alpha = _alpha;

- (id)initWithColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    // calls the super
    self = [super init];

    // sets the attributes
    self.red = red;
    self.green = green;
    self.blue = blue;
    self.alpha = alpha;

    // returns the self
    return self;
}

- (void)dealloc {
    // releases the color
    [_color release];

    // calls the super
    [super dealloc];
}

- (UIColor *)UIColor {
    // in case the color is defined
    if(_color) {
        // returns the color
        return _color;
    }

    // creates a ui color object
    UIColor *color = [[UIColor alloc] initWithRed:self.red green:self.green blue:self.blue alpha:self.alpha];

    // sets the objects
    _color = [color retain];

    // releases the objects
    [color release];

    // returns the ui color object
    return _color;
}

@end
