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
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2012 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "Dependencies.h"

/**
 * Provides http related utility methods.
 */
@interface HMHttpUtil : NSObject {
}

/**
 * Creates the http get or post data from the
 * given map of remote data.
 *
 * @param remoteData The remote data map to be converted
 * to get or post string.
 * @return The data structure with the get or post data.
 */
+ (NSData *)createHttpData:(NSDictionary *)remoteData;

/**
 * Creates the http get or post data from the
 * given sequence of tuples for remote data.
 *
 * @param remoteData The remote data sequence of tuples
 * to be converted to get or post string.
 * @return The data structure with the get or post data.
 */
+ (NSData *)createHttpSequenceData:(NSArray *)remoteSequenceData;

/**
 * Creates the http get or post data string from the
 * given map of remote data.
 *
 * @param remoteData The remote data map to be converted
 * to get or post string.
 * @return The data structure with the get or post data string.
 */
+ (NSString *)createHttpDataString:(NSDictionary *)remoteDataString;

@end
