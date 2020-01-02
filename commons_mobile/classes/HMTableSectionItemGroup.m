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
