//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// Inheritance and Composition are the fundamental approaches we use for class design
// they are the two power tools we use to answer recurring software design questions
// like, how does one class relate to another? which class should own a particular method?
// if the functionality in a method needs to be shared, what's the best way to do that?

// It is through inheritance that you can create objects that share some of the same properties and behaviors.

// Composition refers to the ability of an object being "composed of" various other objects.
// in this case, the buttons squareButton and roundButton

// "When do we use inheritance or composition?"
// it depends, however, as a rule of thumb, in general you should strive for composition and only resort to inheritance when it is unambigiously obvious that the relationship between 2 classes is a relationship

// most of the time, when combining classes, you are after another class' state and behavior, properties and methods
// you are not necessarily interested in becoming that other class, which is what inheritance enforces

#import <Cocoa/Cocoa.h>
#import "Shape.h"
#import "Circle.h"
#import "Rectangle.h"
#import "Button.h"

int main()
{
    
    Shape *shape = [[Shape alloc] init];
    NSLog(@"shape's area is %f", shape.calculateArea);      // using property dot notation
    NSLog(@"shape's area is %f", [shape calculateArea]);    // using getter method
    
    
    
    
    Circle *roundShape = [[Circle alloc] init];
    
    // set the radius of the circle
    roundShape.radius = 25;
    NSLog(@"roundShape's area is %.2f", roundShape.calculateArea);
    
    Button *roundButton = [[Button alloc] init];
    roundButton.shape = roundShape;
    
    
    
    // create an instance of Rectangle and squareButton
    Rectangle *squareShape = [[Rectangle alloc] init];
    
    squareShape.width = 8;
    squareShape.height = 8;
    NSLog(@"squareShape's area is %.2f", squareShape.calculateArea);
    
    Button *squareButton = [[Button alloc] init];
    squareButton.shape = squareShape;
    
    return 0;
}
