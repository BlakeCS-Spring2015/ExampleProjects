//
//  Student.m
//  ClassesAndObjects
//
//  Created by Sean Hickey on 2/9/15.
//  Copyright (c) 2015 Sean Hickey. All rights reserved.
//

// Import the Student header file (so that we know what the public pieces are)
#import "Student.h"

// The @implementation is the part where we write all the actual function code
// for the Student class. In particular, we need to implement the -fullName method.
@implementation Student

// Here's the implementation for the fullName method. Notice it has the same
// declaration as we wrote in the header file.
- (NSString *)fullName
{
    // We put all the code for the method between curly braces {}
    
    // This method should be pretty simple.
    // In particular, we want it to return the combination of the
    // givenName and the familyName variables.
    NSString *combinedName = [self.givenName stringByAppendingString:@" "];
    combinedName = [combinedName stringByAppendingString:self.familyName];
    
    // So what happened here?
    // Just like we can create multiple strings, we want to be able to create multiple students.
    // Once we have a student created, we can refer to that particular student as `self` within
    // the implementation of the class.
    // So self.givenName gives us the string value of the givenName property of the particular student object.
    // Similarly, self.familyName gives us the string value of the familyName property.
    // We combine these two be using the -stringByAppendingString: method of the NSString class.
    // See: https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSString_Class/#//apple_ref/occ/instm/NSString/stringByAppendingString:
    // First, we append a space character (so that the familyName won't directly abut the givenName)
    // Next, we append the familyName
    
    return combinedName; // Return the combined string
}

@end
