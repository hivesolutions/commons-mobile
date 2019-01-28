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

#import "HMImage.h"

@implementation HMImage

@synthesize imageName = _imageName;
@synthesize leftCap = _leftCap;
@synthesize topCap = _topCap;

- (id)initWithImageName:(NSString *)imageName {
    // calls the super
    self = [super init];

    // sets the attributes
    self.imageName = imageName;
    self.topCap = 0;
    self.leftCap = 0;

    // returns the self
    return self;
}

- (id)initWithImageName:(NSString *)imageName leftCap:(float)leftCap topCap:(float)topCap {
    // calls the super
    self = [super init];

    // sets the attributes
    self.imageName = imageName;
    self.topCap = topCap;
    self.leftCap = leftCap;

    // returns the self
    return self;
}

- (void)dealloc {
    // releases the image name
    [_imageName release];

    // releases the color
    [_color release];

    // calls the super
    [super dealloc];
}

- (UIImage *)UIImage {
    // creates the ui image object
    UIImage *image = [UIImage imageNamed:self.imageName];

    // in case the image has caps
    if(self.leftCap > 0 || self.topCap > 0) {
        // retrieves a stretchable version of the image
        image = [image stretchableImageWithLeftCapWidth:self.leftCap topCapHeight:self.topCap];
    }

    // returns the ui image object
    return image;
}

- (UIColor *)UIColor {
    // in case the color is defined
    if(_color) {
        // returns the color
        return _color;
    }

    // creates the color pattern
    UIColor *color = [[UIColor alloc] initWithPatternImage:self.UIImage];

    // stores the color for later refernce
    _color = [color retain];

    // releases the color
    [color release];

    // returns the ui color object
    return _color;
}

@end
