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

#import "HMHttpUtil.h"

@implementation HMHttpUtil

+ (NSData *)createHttpData:(NSDictionary *)remoteData {
    // in case the remote date is invalid
    if(remoteData == nil) {
        // returns an empty string with
        // autorelease support
        return [[[NSData alloc] init] autorelease];
    }

    // retrives the remote data enumerator
    NSEnumerator *remoteDataEnumerator = [remoteData keyEnumerator];

    // allocates the key value
    id key;

    // creats the buffer to hold the string
    NSMutableArray *stringBuffer = [[NSMutableArray alloc] init];

    // sets the is first flag
    BOOL isFirst = YES;

    // iterates over the remote data
    while((key = [remoteDataEnumerator nextObject])) {
        // retrieves the current value
        NSString *value = (NSString *) [remoteData objectForKey:key];

        // in case the value is not defined or it's
        // an empty string
        if(value == nil || (NSNull *) value == [NSNull null] || value.length < 1) {
            // sets the value as an empty string
            value = @"";
        }

        // in case it's the first iteration
        if(isFirst) {
            // unsets the is first flag
            isFirst = NO;
        }
        // otherwise it must be a different iteration
        else {
            // adds the "and" value
            [stringBuffer addObject:@"&"];
        }

        // creates the line value
        NSString *lineValue = [NSString stringWithFormat:@"%@=%@", key, value];

        // adds the line value to the string buffer
        [stringBuffer addObject:lineValue];
    }

    // joins the http string buffer retrieving the string
    NSString *httpString = [stringBuffer componentsJoinedByString:@""];

    // escapes the http string
    NSString *escapedHttpString = [httpString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    escapedHttpString = [escapedHttpString stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];

    // creates the http data from the http string
    NSData *httpData = [escapedHttpString dataUsingEncoding:NSUTF8StringEncoding];

    // releases the objects
    [stringBuffer release];

    // returns the http data
    return httpData;
}

+ (NSData *)createHttpSequenceData:(NSArray *)remoteSequenceData {
    // in case the remote sequence date is invalid
    if(remoteSequenceData == nil) {
        // returns an empty string with
        // autorelease support
        return [[[NSData alloc] init] autorelease];
    }

    // retrives the remote sequence data enumerator
    NSEnumerator *remoteSequenceDataEnumerator = [remoteSequenceData objectEnumerator];

    // allocates the object value
    id object;

    // creats the buffer to hold the string
    NSMutableArray *stringBuffer = [[NSMutableArray alloc] init];

    // sets the is first flag
    BOOL isFirst = YES;

    // iterates over the remote data
    while((object = [remoteSequenceDataEnumerator nextObject])) {
        // casts the object as an array (tuple)
        // that should contain both the key and value
        NSArray *tuple = (NSArray *) object;

        // retrieves the key and the value to create
        // the string tuple value (key value pair)
        NSString *key = [tuple objectAtIndex:0];
        NSString *value = [tuple objectAtIndex:1];

        // in case the value is not defined or it's
        // an empty string
        if(value == nil || (NSNull *) value == [NSNull null] || value.length < 1) {
            // sets the value as an empty string
            value = @"";
        }

        // in case it's the first iteration
        // must unset the is first flag
        if(isFirst) { isFirst = NO; }
        // otherwise it must be a different iteration
        // and must add the "and" character
        else { [stringBuffer addObject:@"&"]; }

        // creates the line value
        NSString *lineValue = [NSString stringWithFormat:@"%@=%@", key, value];

        // adds the line value to the string buffer
        [stringBuffer addObject:lineValue];
    }

    // joins the http string buffer retrieving the string
    NSString *httpString = [stringBuffer componentsJoinedByString:@""];

    // escapes the http string unsing the correct escaping
    // characters to archieve the purpose
    NSString *escapedHttpString = [httpString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    escapedHttpString = [escapedHttpString stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];

    // creates the http data from the http string encoded
    // encoded using the default utf8 encoding
    NSData *httpData = [escapedHttpString dataUsingEncoding:NSUTF8StringEncoding];

    // releases the objects
    [stringBuffer release];

    // returns the http data
    return httpData;
}

+ (NSString *)createHttpDataString:(NSDictionary *)remoteDataString {
    // creates the http data
    NSData *data = [HMHttpUtil createHttpData:remoteDataString];

    // initializes the data string with the contents of the data
    NSString *dataString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    // returns the data string
    return [dataString autorelease];
}

@end
