// Hive Mobile
// Copyright (c) 2008-2019 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2019 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

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
