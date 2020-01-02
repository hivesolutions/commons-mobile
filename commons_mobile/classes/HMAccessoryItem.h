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

#import "HMItem.h"
#import "HMImage.h"
#import "HMPoint.h"

/**
 * Class representing an accessory,
 * meant to be used in a table cell.
 */
@interface HMAccessoryItem : HMItem {
    @private
    HMPoint *_margin;
    HMImage *_imageNormal;
    HMImage *_imageHighlighted;
}

/**
 * The accessory's margin from the
 * top and left of the table cell.
 */
@property (retain) HMPoint *margin;

/**
 * The accessory's normal image.
 */
@property (retain) HMImage *imageNormal;

/**
 * The accessory's highlighted image.
 */
@property (retain) HMImage *imageHighlighted;

@end
