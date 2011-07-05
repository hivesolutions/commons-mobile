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

#import "Dependencies.h"

@interface HMColor : NSObject {
    @private
    float _red;
    float _green;
    float _blue;
    float _alpha;
}

@property (assign) float red;
@property (assign) float green;
@property (assign) float blue;
@property (assign) float alpha;
@property (readonly) UIColor *UIColor;

/**
 * Creates and returns a color object.
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
+ (HMColor *)colorWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;

/**
 * Retrieves a white color object.
 */
+ (HMColor *)whiteColor;

/**
 * Retrieves a black color object.
 */
+ (HMColor *)blackColor;

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
- (id)initWithRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;

@end
