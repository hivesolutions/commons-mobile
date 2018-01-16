// Hive Mobile
// Copyright (c) 2008-2018 Hive Solutions Lda.
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
// __copyright__ = Copyright (c) 2008-2018 Hive Solutions Lda.
// __license__   = Apache License, Version 2.0

#import "Dependencies.h"

/**
 * Avoids the definition of a null object value.
 *
 * @param nullValue The value than may contain a null
 * object value.
 * @return The object value or nil in case a null object
 * is defined.
 */
#define AVOID_NULL(nullValue) (NSNull *) nullValue == [NSNull null] ? nil : nullValue

/**
 * Avoids the definition of a nil value.
 *
 * @param nullValue The value than may contain a nil
 * value
 * @return The object value or nunll object in case
 * nil is defined.
 */
#define AVOID_NIL(nilValue, nillType) nilValue == nil ? (nillType *) [NSNull null] : nilValue

/**
 * Avoids the definition of a null object value.
 * This macro assumes that the value is a number
 * and so the default returned value is is a number.
 *
 * @param nullValue The value than may contain a null
 * object value.
 * @return The object value or zero number in case a null
 * object is defined.
 */
#define AVOID_NULL_NUMBER(nullValue) (NSNull *) nullValue == [NSNull null] ? [NSNumber numberWithInt:0] : nullValue

/**
 * Avoids the definition of a null object value.
 * This macro assumes that the value is a array
 * and so the default returned value is is a array.
 *
 * @param nullValue The value than may contain a null
 * object value.
 * @return The object value or empty array in case a null
 * object is defined.
 */
#define AVOID_NULL_ARRAY(nullValue) (NSNull *) nullValue == [NSNull null] ? [[[NSArray alloc] init] autorelease] : nullValue

/**
 * Avoids the definition of a null object value.
 * This macro assumes that the value is a dictionary
 * and so the default returned value is is a dictionary.
 *
 * @param nullValue The value than may contain a null
 * object value.
 * @return The object value or empty dictionary in case a null
 * object is defined.
 */
#define AVOID_NULL_DICTIONARY(nullValue) (NSNull *) nullValue == [NSNull null] ? [[[NSDictionary alloc] init] autorelease] : nullValue

@interface HMNullUtil : NSObject {
}

@end
