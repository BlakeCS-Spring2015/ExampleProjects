//
//  ViewController.h
//  StudentMVC
//
//  Created by Sean Hickey on 2/9/15.
//  Copyright (c) 2015 The Blake School. All rights reserved.
//


// Import the UIKit framework which gives us access to all the iOS-y stuff
// like views, buttons, touch events, etc.
#import <UIKit/UIKit.h>


// Declare the public ViewController interface. There's nothing about the view controller that
// other classes/object will need access to, so we can basically keep this interface blank.
//
// Note the `ViewController : UIViewController` syntax, which means that our ViewController class is a *subclass*
// of the UIViewController class that Apple provides for us in UIKit. In a nutshell, it means that
// any data a UIViewController has (think: properties) our ViewController also has, and anything
// a UIViewController can do (think: methods) our ViewController can also do.
@interface ViewController : UIViewController


@end

