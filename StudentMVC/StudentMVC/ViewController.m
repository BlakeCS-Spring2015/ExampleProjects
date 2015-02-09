//
//  ViewController.m
//  StudentMVC
//
//  Created by Sean Hickey on 2/9/15.
//  Copyright (c) 2015 The Blake School. All rights reserved.
//

#import "ViewController.h"

// Import the Student class, so they we can do stuff with Student object
#import "Student.h"


// Doesn't this look familiar? It's basically an additional @interface like the one we see
// in the ViewController.h file. So why would we want this here? We can think about the
// @interface in the .h file as the "public" properties and methods, and this one as the
// "private" properties and methods (i.e., these properties and methods) are only visible
// and accessible to code within this .m file.
@interface ViewController ()

// Declare a "private" array property to hold our student objects.
// In a sense, this is how we're accessing the model layer for our app.
@property (strong, nonatomic) NSArray *students;


// We also typically use this interface to connect outlets and actions
// to the actual view (i.e., storyboard)
@property (weak, nonatomic) IBOutlet UILabel *studentInfoLabel;

- (IBAction)showNamesTapped:(id)sender;
- (IBAction)showGradesTapped:(id)sender;

@end




@implementation ViewController


// This is the "startup" method for the view controller. We can do any initial
// setup in this method so that everything is ready to go when the view gets
// drawn to the screen
- (void)viewDidLoad {
    // Question: What does `super` mean here? See if you can figure it out!
    [super viewDidLoad];
    
    // Create some students
    Student *student1 = [[Student alloc] init];
    Student *student2 = [[Student alloc] init];
    Student *student3 = [[Student alloc] init];
    
    // Set their properties
    student1.givenName  = @"Foo";
    student1.familyName = @"Bar";
    student1.grade      = @(9);
    
    student2.givenName  = @"Baz";
    student2.familyName = @"Quux";
    student2.grade      = @(12);
    
    student3.givenName  = @"Norf";
    student3.familyName = @"Corge";
    student3.grade      = @(10);
    
    // Put the students into an array
    NSArray *allStudents = @[student1, student2, student3];
    
    // Set the ViewController's `students` property (declared at the top of this file in the "private" interface)
    self.students = allStudents;
}


- (IBAction)showNamesTapped:(id)sender {
    // Constuct a string of all the student givenNames.
    NSString *allNames = @"";  // Start with an empty string
    
    // Loop over the students in the model
    for (Student *student in self.students) {
        // Append each given name followed by a space
        allNames = [allNames stringByAppendingFormat:@"%@ ", student.givenName];
    }
    
    // Set the view text
    self.studentInfoLabel.text = allNames;
}

- (IBAction)showGradesTapped:(id)sender {
    // Constuct a string of all the student grades.
    NSString *allGrades = @"";  // Start with an empty string
    
    // Loop over the students in the model
    for (Student *student in self.students) {
        // Append each grade followed by a space
        allGrades = [allGrades stringByAppendingFormat:@"%@ ", student.grade];
    }
    
    // Set the view text
    self.studentInfoLabel.text = allGrades;
}
@end
