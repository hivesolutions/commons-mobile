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
    // creates the default colors
    HMColor *labelItemTextColor = [[HMColor alloc] initRed:0.29 green:0.34 blue:0.42 alpha:1.0];
    HMColor *labelItemShadowColor = [[HMColor alloc] initRed:1.0 green:1.0 blue:1.0 alpha:1.0];

    // creates the label item
    HMLabelItem *labelItem = [[HMLabelItem alloc] init];
    labelItem.description = headerString;
    labelItem.fontName = @"Helvetica";
    labelItem.fontSize = 13;
    labelItem.textColor = labelItemTextColor;
    labelItem.shadowColor = labelItemShadowColor;

    // sets the attributes
    self.headerString = headerString;
    self.header = labelItem;

    // releases the objects
    [labelItemTextColor release];
    [labelItemShadowColor release];
    [labelItem release];
}

- (NSString *)footerString {
    return _footerString;
}

- (void)setFooterString:(NSString *)footerString {
    // creates the default colors
    HMColor *labelItemTextColor = [[HMColor alloc] initRed:0.29 green:0.34 blue:0.42 alpha:1.0];
    HMColor *labelItemShadowColor = [[HMColor alloc] initRed:1.0 green:1.0 blue:1.0 alpha:1.0];

    // creates the label item
    HMLabelItem *labelItem = [[HMLabelItem alloc] init];
    labelItem.description = footerString;
    labelItem.fontName = @"Helvetica";
    labelItem.fontSize = 13;
    labelItem.textColor = labelItemTextColor;
    labelItem.shadowColor = labelItemShadowColor;

    // sets the attributes
    self.footerString = footerString;
    self.footer = labelItem;

    // releases the objects
    [labelItemTextColor release];
    [labelItemShadowColor release];
    [labelItem release];
}

@end