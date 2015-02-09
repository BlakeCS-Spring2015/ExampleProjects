//
//  Student.m
//  ClassesAndObjects
//
//  Created by Sean Hickey on 2/9/15.
//  Copyright (c) 2015 Sean Hickey. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSString *)fullName
{
    NSString *combinedName = [self.givenName stringByAppendingString:@" "];
    combinedName = [combinedName stringByAppendingString:self.familyName];
    return combinedName;
}

@end
