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

#import "HMItemGroup.h"
#import "HMLabelItem.h"

/**
 * Represents a table section.
 */
@interface HMTableSectionItemGroup : HMItemGroup {
    @private
    NSString *_headerString;
    NSString *_footerString;
    HMLabelItem *_header;
    HMLabelItem *_footer;
}

/**
 * The string representation of the header.
 */
@property (retain) NSString *headerString;

/**
 * The footer representation of the footer.
 */
@property (retain) NSString *footerString;

/**
 * The header for the table section.
 */
@property (retain) HMLabelItem *header;

/**
 * The footer for the table section.
 */
@property (retain) HMLabelItem *footer;

@end
