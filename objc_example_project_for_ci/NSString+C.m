//
// Created by Alexey Chirkov on 10/05/17.
// Copyright (c) 2017 Rubysparklabs. All rights reserved.
//

#import "NSString+C.h"

@implementation NSString (C)

- (char *)convertToCString {
    unsigned long length = [self length];

    char *temp;
    temp = (char *) malloc((length + 1) * sizeof(char)); //Holds C String
    for (NSUInteger i = 0; i < length; i++) {
        temp[i] = (char) [self characterAtIndex:i];
    }
    temp[length] = 0;

    return temp;
}


@end