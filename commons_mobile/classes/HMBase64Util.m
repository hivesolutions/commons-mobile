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
// __revision__  = $LastChangedRevision: 2390 $
// __date__      = $LastChangedDate: 2009-04-02 08:36:50 +0100 (qui, 02 Abr 2009) $
// __copyright__ = Copyright (c) 2008 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

#import "HMBase64Util.h"

@implementation HMBase64Util

+ (NSString *)encodeBase64WithString:(NSString *)stringValue {
    // retrieves the data value from the string value
    NSData *dataValue = [stringValue dataUsingEncoding:NSUTF8StringEncoding];

    // encodes the data value and retrieves the base 64 value
    NSString *base64Value = [HMBase64Util encodeBase64WithData:dataValue];

    // returns the base 64 value
    return base64Value;
}

+ (NSString *)encodeBase64WithData:(NSData *)dataValue {
    // retrieves the raw (byte buffer) data
    const unsigned char *rawData = [dataValue bytes];

    // allocates the current pointer
    char *currentPointer;

    // allocates the string result
    char *stringResult;

    // retrieves the data value length
    int dataValueLength = [dataValue length];

    // in case the data value is empty
    if(dataValueLength == 0) {
        // returns immediately with empty
        // value (error)
        return nil;
    }

    // allocates the space for the string result (according to the
    // predicted space for base 64)
    stringResult = (char *) calloc(((dataValueLength + 2) / 3) * 4, sizeof(char));

    // sets the current pointer as the string result
    currentPointer = stringResult;

    // iterates through everything
    while(dataValueLength > 2) {
        // calculates the various bytes
        *currentPointer++ = _base64EncodingTable[rawData[0] >> 2];
        *currentPointer++ = _base64EncodingTable[((rawData[0] & 0x03) << 4) + (rawData[1] >> 4)];
        *currentPointer++ = _base64EncodingTable[((rawData[1] & 0x0f) << 2) + (rawData[2] >> 6)];
        *currentPointer++ = _base64EncodingTable[rawData[2] & 0x3f];

        // increments the raw data pointer
        rawData += 3;

        // decrements the data value length
        dataValueLength -= 3;
    }

    // now deal with the tail end of things
    if(dataValueLength != 0) {
        // retrieves the current pointer value
        *currentPointer++ = _base64EncodingTable[rawData[0] >> 2];

        // checks if the data value length is still one
        if(dataValueLength > 1) {
            // appends the padding character
            *currentPointer++ = _base64EncodingTable[((rawData[0] & 0x03) << 4) + (rawData[1] >> 4)];
            *currentPointer++ = _base64EncodingTable[(rawData[1] & 0x0f) << 2];
            *currentPointer++ = '=';
        }
        // otherwise it must be two
        else {
            // appends two padding characters
            *currentPointer++ = _base64EncodingTable[(rawData[0] & 0x03) << 4];
            *currentPointer++ = '=';
            *currentPointer++ = '=';
        }
    }

    // terminates the string result (end of string)
    *currentPointer = '\0';

    // encodes the c string to string
    NSString *stringValue = [NSString stringWithCString:stringResult encoding:NSASCIIStringEncoding];

    // returns the string value
    return stringValue;
}

+ (NSData *)decodeBase64WithString:(NSString *)base64Value {
    // retrieves the intial c string object pointer from the base 64 value
    const char *objectPointer = [base64Value cStringUsingEncoding:NSASCIIStringEncoding];

    // retrieves the base 64 length from the object pointer
    int base64Length = strlen(objectPointer);

    // allocates the current value
    int currentValue;

    // allocates the object result
    unsigned char *objectResult;

    // allocates the accumulators
    int i = 0, j = 0, k;

    // allocates the space for the object result
    objectResult = calloc(base64Length, sizeof(char));

    // Run through the whole string, converting as we go
    while(((currentValue = *objectPointer++) != '\0') && (base64Length-- > 0) ) {
        if(currentValue == '=') {
            if(*objectPointer != '=' && ((i % 4) == 1)) { // || (intLength > 0)) {
                // the padding character is invalid at this point -- so this entire string is invalid
                free(objectResult);
                return nil;
            }

            // continues the loop
            continue;
        }

        // retrieves the current decoded character value
        // using the decoding table
        currentValue = _base64DecodingTable[currentValue];

        // in case the current value is a
        // "skip character"
        if (currentValue == -1) {
            // continues the loop
            continue;
        }
        // in case the current value is an
        // "error character"
        else if (currentValue == -2) {
            // releases the object result
            free(objectResult);

            // returns immediately in error
            return nil;
        }

        // switches over the modulus value
        switch(i % 4) {
            case 0:
                // calculates the object result for the
                // current index value
                objectResult[j] = currentValue << 2;

                // breaks the switch
                break;

            case 1:
                // calculates the object result for the
                // current index value
                objectResult[j++] |= currentValue >> 4;
                objectResult[j] = (currentValue & 0x0f) << 4;

                // breaks the switch
                break;

            case 2:
                // calculates the object result for the
                // current index value
                objectResult[j++] |= currentValue >> 2;
                objectResult[j] = (currentValue & 0x03) << 6;

                // breaks the switch
                break;

            case 3:
                objectResult[j++] |= currentValue;

                // breaks the switch
                break;
        }

        // increments the index
        i++;
    }

    // sets the initial accumulator value
    k = j;

    // in case the current character
    // is a padding character
    if(currentValue == '=') {
        switch(i % 4) {
            case 1:
                // releases the object result
                free(objectResult);

                // returns immediately in error
                return nil;
            case 2:
                // increments the accumulator
                k++;
            case 3:
                // sets the end of string value
                objectResult[k] = 0;
        }
    }

    // retrieves the data value by encoding the object result into data
    NSData *dataValue = [[[NSData alloc] initWithBytes:objectResult length:j] autorelease];

    // releases the object result
    free(objectResult);

    // returns the data value
    return dataValue;
}

@end
