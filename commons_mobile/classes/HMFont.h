// Hive Mobile
// Copyright (c) 2008-2017 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2017 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

#import "Dependencies.h"

/**
 * Represents a font.
 */
@interface HMFont : NSObject {
    @private
    NSString *_name;
    float _size;
    UIFont *_font;
}

/**
 * The font's name.
 */
@property (retain) NSString *name;

/**
 * The font's size.
 */
@property (assign) float size;

/**
 * Returns a ui font object that
 * represents this object.
 */
@property (readonly) UIFont *UIFont;

/**
 * Constructor of the class.
 *
 * @param fontName: The font's name.
 * @param size: The font's size.
 * @return: The hm font object.
 */
- (id)initWithFontName:(NSString *)fontName size:(float)size;

@end
