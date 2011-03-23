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

#import "HMLabelItem.h"

@implementation HMLabelItem

@synthesize fontName = _fontName;
@synthesize fontSize = _fontSize;
@synthesize textColor = _textColor;
@synthesize shadowColor = _shadowColor;
@synthesize shadowOffset = _shadowOffset;

- (void)dealloc {
    // releases the font name
    [_fontName release];

    // releases the font size
    [_fontSize release];

    // releases the text color
    [_textColor release];

    // releases the shadow color
    [_shadowColor release];

    // releases the shadow offset
    [_shadowOffset release];

    // calls the super
    [super dealloc];
}

@end
