// Hive Mobile
// Copyright (c) 2008-2020 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2020 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

#import "Dependencies.h"

/**
 * Represents a color.
 */
@interface HMColor : NSObject {
    @private
    float _red;
    float _green;
    float _blue;
    float _alpha;
    UIColor *_color;
}

/**
 * The color's red component,
 * represented from zero to one.
 */
@property (assign) float red;

/**
 * The color's green component,
 * represented from zero to one.
 */
@property (assign) float green;

/**
 * The color's blue component,
 * represented from zero to one.
 */
@property (assign) float blue;

/**
 * The color's alpha component,
 * represented from zero to one.
 */
@property (assign) float alpha;

/**
 * The ui color object that
 * represents this object.
 */
@property (readonly) UIColor *UIColor;

/**
 * Constructor of the class.
 *
 * @param red A number from zero to
 * one representing the red component.
 * @param green A number from zero to
 * one representing the green component.
 * @param blue A number from zero to
 * one representing the blue component.
 * @param alpha A number from zero to
 * one representing the alpha component.
 * @return The constructed instance.
 */
- (id)initWithColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;

@end
