//
//  MyClass.m
//  objc_example_project_for_ci
//
//  Created by Alexey Chirkov on 09/06/2017.
//  Copyright © 2017 Rubysparklabs. All rights reserved.
//

#import "MyClass.h"
#import "c_file.h"
#import "NSString+C.h"

@implementation MyClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (char*)getCString:(NSString*)string {
    char *c_string = get_string([string convertToCString]);
    return c_string;
}

+ (NSString*)getNSString:(char *)c_string {
    NSString *after = [NSString stringWithCString:c_string encoding:NSUTF8StringEncoding];
    return after;
}

@end
