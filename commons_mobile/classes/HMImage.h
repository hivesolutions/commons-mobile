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

/**
 * Represents an image.
 */
@interface HMImage : NSObject {
    @private
    NSString *_imageName;
    float _leftCap;
    float _topCap;
    UIColor *_color;
}

/**
 * The image name.
 */
@property (retain) NSString *imageName;

/**
 * The horizontal portion of the
 * image that won't be stretched,
 * on the left and right sides.
 */
@property (assign) float leftCap;

/**
 * The vertical portion of the
 * image that won't be stretched
 * on the top and bottom.
 */
@property (assign) float topCap;

/**
 * The ui image representation for
 * this object.
 */
@property (readonly) UIImage *UIImage;

/**
 * The ui color representation for
 * this object.
 */
@property (readonly) UIColor *UIColor;

/**
 * Constructor of the class.
 *
 * @param imageName The image's name.
 * @return The hm image instance.
 */
- (id)initWithImageName:(NSString *)imageName;

/**
 * Constructor of the class.
 *
 * @param imageName The image's name.
 * @param leftCap The width of the image that
 * doesn't stretch, both on the left and right side.
 * @param topCap The height of the image that
 * doesn't stretch, both on the top and bottom.
 * @return The hm image instance.
 */
- (id)initWithImageName:(NSString *)imageName leftCap:(float)leftCap topCap:(float)topCap;

@end
