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

@interface HMImage : NSObject {
    @private
    NSString *_imageName;
    float _leftCap;
    float _topCap;
}

/**
 * The image name.
 */
@property (retain) NSString *imageName;

/**
 * The image's left cap.
 */
@property (assign) float leftCap;

/**
 * The image's top cap.
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
 * @param imageName: The image's name.
 * @return The hm image instance.
 */
- (id)initWithImageName:(NSString *)imageName;

/**
 * Constructor of the class.
 *
 * @param imageName: The image's name.
 * @param leftCap: The width of the image that
 * doesn't stretch, both on the left and right side.
 * @param topCap: The height of the image that
 * doesn't stretch, both on the top and bottom.
 * @return The hm image instance.
 */
- (id)initWithImageName:(NSString *)imageName leftCap:(float)leftCap topCap:(float)topCap;

@end
