//
//  main.m
//  HelloWorld
//
//  Created by Sean Hickey on 2/9/15.
//  Copyright (c) 2015 The Blake School. All rights reserved.
//


// Use the foundation framework. This gives us access to all the basic objects in the langauage
// like strings, arrays (lists), dictionaries, etc.
#import <Foundation/Foundation.h>

// This is the main entry point of the application. I.e., when the application starts,
// the first thing it will do is run this function. When the function ends, the program
// will also end. Don't worry about all the argc/argv stuff right now.
int main(int argc, const char * argv[]) {
    
    // The @autoreleasepool{} syntax has to do with the way the application manages
    // its memory (remember how RAM and addresses and stuff work?)
    // For the moment, the only thing we need to know is that we should put all our
    // code inside the curly braces in order for the program to work correctly.
    // You will see this same syntax in the main.m file in an iOS app
    @autoreleasepool {
        
        // Declare a new string object that contains the text "Hello world"
        NSString *hello = @"Hello world!";
        
        // Print the string to the console. The %@ is a formatting syntax
        // that allows us to insert the hello variable into the logging string.
        // I.e., this will print: "Hello string: Hello world!"
        NSLog(@"Hello string: %@", hello);
        
        // Declare a few more string objects
        NSString *foo = @"Foo";
        NSString *bar = @"Bar";
        NSString *baz = @"Baz";
        
        // Put the strings into an array object
        NSArray *allMyStrings = @[hello, foo, bar, baz];
        
        // Loop through the strings and print them out
        for (NSString *printString in allMyStrings) {
            NSLog(@"%@", printString);
        }
        
    }
    return 0; // End the program
}
