//
//  MyClass.h
//  objc_example_project_for_ci
//
//  Created by Alexey Chirkov on 09/06/2017.
//  Copyright © 2017 Rubysparklabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject

+ (char*)getCString:(NSString*)string;
+ (NSString*)getNSString:(char *)c_string;

@end
