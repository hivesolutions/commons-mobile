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
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2012 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

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
