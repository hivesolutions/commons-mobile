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

// __author__    = Luís Martinho <lmartinho@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2012 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "HMHexadecimalUtil.h"

@implementation HMHexadecimalUtil

+ (NSString *)hexlifyData:(NSData *)data {
    // retrieves the data length
    int dataLength = data.length;

    // allocates space for the string value taking into account
    // the data length (double the size of it)
    NSMutableString *stringValue = [NSMutableString stringWithCapacity:dataLength * 2];

    // allocates the bytes for the bytes of the data
    char *bytes = malloc(sizeof(char) * dataLength);

    // retrieves the bytes and the length from the (original) data
    [data getBytes:bytes length:dataLength];

    // iterates over the length of the bytes
    for(int index = 0; index < dataLength; index++) {
        [stringValue appendFormat:@"%02.2hhX", bytes[index]];
    }

    // releases the bytes
    free(bytes);

    // returns the string value
    return stringValue;
}

@end
