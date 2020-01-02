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

#import "Dependencies.h"

/**
 * Provides enumeration related utilities.
 */
@interface HMEnumerableUtil : NSObject {
}

/**
 * Maps the given enumerable in the given block.
 * The mapping function is part of the functional programming
 * tools.
 *
 * @param enumerable The enumerable to be "mapped".
 * @param block The block to be used in the map operation.
 * @param copyEnumerable If the enumerable should be copied in
 * order to provide extra safety in "mapping".
 */
+ (void)map:(NSArray *)enumerable block:(void (^)(id value))block copyEnumerable:(BOOL)copyEnumerable;

@end
