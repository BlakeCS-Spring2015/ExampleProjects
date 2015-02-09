//
//  main.m
//  ClassesAndObjects
//
//  Created by Sean Hickey on 2/9/15.
//  Copyright (c) 2015 Sean Hickey. All rights reserved.
//


// Use the foundation framework.
#import <Foundation/Foundation.h>

// This time, we will also import the Student.h file so that we can create
// Student objects and run methods on them.
#import "Student.h"

// Main entry point for the program
int main(int argc, const char * argv[]) {

    // Memory management business
    @autoreleasepool {
        
        // Create a new student object. The [[ClassName alloc] init] idiom is very very common in Objective-C
        Student *student1 = [[Student alloc] init];
        
        // Set some properties on the new student object
        student1.givenName  = @"Foo";  // String literal
        student1.familyName = @"Bar";  // String literal
        student1.grade      = @(8);    // Number literal, 8th grade
        
        // Run the fullName method on our student1 object.
        // Assign the returned value to a string.
        NSString *student1FullName = [student1 fullName];
        
        // Print the student's fullName
        NSLog(@"%@", student1FullName);
        
        
        
        // Create a second student object
        Student *student2 = [[Student alloc] init];
        
        // Set properties
        student2.givenName  = @"Baz";
        student2.familyName = @"Quux";
        student2.grade      = @(11);
        
        // This time, we'll run the fullName method directly inside of the NSLog() function
        // instead of assigning it to a new variable.
        NSLog(@"%@", [student2 fullName]);
        
        
        // Put the students into an array
        NSArray *students = @[student1, student2];
        
        // Loop through the array and print each student's grade
        for (Student *student in students) {
            NSLog(@"%@", student.grade);
        }
        
    }
    return 0; // End the program
}
