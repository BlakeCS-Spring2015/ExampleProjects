//
//  Student.h
//  ClassesAndObjects
//
//  Created by Sean Hickey on 2/9/15.
//  Copyright (c) 2015 Sean Hickey. All rights reserved.
//

#import <Foundation/Foundation.h>

// Declare a new class called Student. Student is also an NSObject.
@interface Student : NSObject

// Each thing in this @interface is a "public" part of the Student class
// (i.e., other classes/objects can have access to this things)

// Here are the public properties (two strings, one number)
// Disregard the (strong, nonatomic) part for now; it's more memory management stuff.
@property (strong, nonatomic) NSString *givenName;
@property (strong, nonatomic) NSString *familyName;
@property (strong, nonatomic) NSNumber *grade;

// Here is a public function (i.e., "method") that belongs to the Student class
// This is a function that returns a string signalled by the (NSString *) part
// at the beginning. The name of the function is fullName.
- (NSString *)fullName;

// Now go look inside Student.m to see the internal "private" pieces of the Student class

@end
