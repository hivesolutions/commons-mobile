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

// __author__    = João Magalhães <joamag@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "HMItem.h"

@implementation HMItem

@synthesize identifier = _identifier;
@synthesize name = _name;
@synthesize description = _description;
@synthesize defaultValue = _defaultValue;
@synthesize backgroundColor = _backgroundColor;
@synthesize selectedBackgroundColor = _selectedBackgroundColor;

- (id)initWithIdentifier:(NSString *)identifier {
    // invokes the parent constructor
    [self init];

    // sets the attributes
    self.identifier = identifier;

    // initializes the default colors
    HMColor *backgroundColor = [[HMColor alloc] initRed:0.96 green:0.96 blue:0.96 alpha:1];
    HMColor *selectedBackgroundColor = [[HMColor alloc] initRed:0.96 green:0.96 blue:0.96 alpha:1];

    // sets the attributes
    self.backgroundColor = backgroundColor;
    self.selectedBackgroundColor = selectedBackgroundColor;

    // releases the objects
    [backgroundColor release];
    [selectedBackgroundColor release];

    // returns the instance
    return self;
}

- (void)dealloc {
    // releases the identifier
    [_identifier release];

    // releases the name
    [_name release];

    // releases the description
    [_description release];

    // releases the default value
    [_defaultValue release];

    // releases the background color
    [_backgroundColor release];

    // releases the selected background color
    [_selectedBackgroundColor release];

    // calls the super
    [super dealloc];
}

@end
