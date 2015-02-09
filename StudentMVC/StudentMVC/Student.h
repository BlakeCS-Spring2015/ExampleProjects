//
//  Student.h
//  ClassesAndObjects
//
//  Created by Sean Hickey on 2/9/15.
//  Copyright (c) 2015 Sean Hickey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (strong, nonatomic) NSString *givenName;
@property (strong, nonatomic) NSString *familyName;
@property (strong, nonatomic) NSNumber *grade;

- (NSString *)fullName;

@end
