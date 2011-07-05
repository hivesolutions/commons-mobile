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

// __author__    = Tiago Silva <tsilva@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "HMColor.h"

@implementation HMColor

@synthesize red = _red;
@synthesize green = _green;
@synthesize blue = _blue;
@synthesize alpha = _alpha;

+ (id)colorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    // creates the color
    HMColor *color = [[[HMColor alloc] initWithRed:red green:green blue:blue alpha:alpha] autorelease];

    // returns the color
    return color;
}

+ (id)whiteColor {
    // returns the white color
    return [HMColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
}

+ (id)blackColor {
    // returns the black color
    return [HMColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
}

+ (id)clearColor{
    // returns the clear color
    return [HMColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
}

- (id)initWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha {
    // sets the attributes
    self.red = red;
    self.green = green;
    self.blue = blue;
    self.alpha = alpha;

    // returns the self
    return self;
}

- (UIColor *)UIColor {
    // creates a ui color object
    UIColor *color = [UIColor colorWithRed:self.red green:self.green blue:self.blue alpha:self.alpha];

    // returns the color object
    return color;
}

@end
