// Hive Mobile
// Copyright (C) 2008-2016 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2016 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "HMTableSectionItemGroup.h"

@implementation HMTableSectionItemGroup

@synthesize header = _header;
@synthesize footer = _footer;

- (void)dealloc {
    // releases the header string
    [_headerString release];

    // releases the footer string
    [_footerString release];

    // releases the header
    [_header release];

    // releases the footer
    [_footer release];

    // calls the super
    [super dealloc];
}

- (NSString *)headerString {
    return _headerString;
}

- (void)setHeaderString:(NSString *)headerString {
    // in case the object is the same
    if(headerString == _headerString) {
        // returns immediately
        return;
    }

    // releases the object
    [_headerString release];

    // sets and retains the object
    _headerString = [headerString retain];

    // creates the label item
    HMLabelItem *labelItem = [[HMLabelItem alloc] init];
    labelItem.description = headerString;

    // sets the attributes
    self.header = labelItem;

    // releases the objects
    [labelItem release];
}

- (NSString *)footerString {
    return _footerString;
}

- (void)setFooterString:(NSString *)footerString {
    // in case the object is the same
    if(footerString == _footerString) {
        // returns immediately
        return;
    }

    // releases the object
    [_footerString release];

    // sets and retains the object
    _footerString = [footerString retain];

    // creates the label item
    HMLabelItem *labelItem = [[HMLabelItem alloc] init];
    labelItem.description = footerString;

    // sets the attributes
    self.footer = labelItem;

    // releases the objects
    [labelItem release];
}

@end
