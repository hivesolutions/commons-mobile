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

#import "HMHttpUtil.h"

@implementation HMHttpUtil

+ (NSData *)createHttpData:(NSDictionary *)remoteData {
    // retrives the remote data enumerator
    NSEnumerator *remoteDataEnumerator = [remoteData keyEnumerator];

    // allocates the key value
    id key;

    // creats the buffer to hold the string
    NSMutableArray *stringBuffer = [[NSMutableArray alloc] init];

    // sets the is first flag
    BOOL isFirst = YES;

    // iterates over the remote data
    while ((key = [remoteDataEnumerator nextObject])) {
        // retrieves the current value
        NSString *value = (NSString *) [remoteData objectForKey:key];

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

        // in case the value is not defined or it's
        // an empty string
        if(value == nil || (NSNull *) value == [NSNull null] || [value length] < 1) {
            // continues the loop
            continue;
        }

        // creates the line value
        NSString *lineValue = [NSString stringWithFormat:@"%@=%@", key, value];

        // adds the line value to the string buffer
        [stringBuffer addObject:lineValue];
    }

    // joins the http string buffer retrieving the string
    NSString *httpString = [stringBuffer componentsJoinedByString:@""];

    // escapes the http string
    NSString *escapedHttpString = [httpString stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding];

    // creates the http data from the http string
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
