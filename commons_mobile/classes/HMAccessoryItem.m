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

#import "HMAccessoryItem.h"

@implementation HMAccessoryItem

@synthesize margin = _margin;
@synthesize imageNormal = _imageNormal;
@synthesize imageHighlighted = _imageHighlighted;

- (void)dealloc {
    // releases the margin
    [_margin release];

    // releases the image normal
    [_imageNormal release];

    // releases the image highlighted
    [_imageHighlighted release];

    // calls the super
    [super dealloc];
}

- (UIView *)generateComponent {
    // creates the accessory view
    HMAccessoryView *accessoryView = [[[HMAccessoryView alloc] init] autorelease];

    // sets the accessory view's text attributes
    accessoryView.text = self.description;
    accessoryView.textColorNormal = self.descriptionColor.UIColor;
    accessoryView.textColorHighlighted = self.descriptionColorHighlighted.UIColor;
    accessoryView.textShadowColor = self.descriptionShadowColor.UIColor;
    accessoryView.margin = [self convertPosition:self.margin];

    // in case the normal image is defined
    if(self.imageNormal) {
        // sets the normal image in the accessory view
        accessoryView.imageNormal = self.imageNormal.UIImage;
    }

    // in case the highlighted image is defined
    if(self.imageHighlighted) {
        // sets the highlighted image in the accessory view
        accessoryView.imageHighlighted = self.imageHighlighted.UIImage;
    }

    // returns the accessory view
    return accessoryView;
}

@end
