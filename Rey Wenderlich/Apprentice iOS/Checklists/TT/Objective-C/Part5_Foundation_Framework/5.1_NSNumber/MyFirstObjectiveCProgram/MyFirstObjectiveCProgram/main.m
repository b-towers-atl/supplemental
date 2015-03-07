//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

/*
 The NSNumber class provides storage for all kinds of numbers such as: int, float, double and long
 
 A framework is a reusable software platform for accelerating the development of an application.
 
 It provides basic functionality that can be selectable adapted by a programmer to meet the particular needs of the application they are building.
 
 A framework saves a programmer significant software development time by eliminating the need to start from stretch every time they build an application.
 
 The programmer builds on top of the foundation.
 
 The Coco Foundation framework is the collection of Objective-C classes that will form the foundation of any application you built.
 */

#import <Cocoa/Cocoa.h>

int main()
{
    // declare
    NSNumber *mike;
    
    // alloc initWithInt
    mike = [[NSNumber alloc] initWithInt: 23];
    NSLog(@"mike %@", mike);
    
    // literal
    mike = @45;
    NSLog(@"mike %@", mike);
    
    
    // NSNumber is the generic notion of number, it's not specific to int or float
    NSNumber *pi = @3.145;
    NSLog(@"pi %@", pi);
    
    /*
     NSNumber is basically a wrapper around various types of numbers.
     
     The key point to be taken away is that NSNumber is a generic number.
     
     It's not specific to any particular type, and this is a theme with OOP.
     
     We strive for generality, which gives us the flexibility when we build our code,
     thus making it simple to implement, but still have complexity and power.
     */
    
    NSNumber *fancy = [NSNumber numberWithFloat:123.321];
    NSLog(@"fancy %@", fancy);
    
    
    return 0;
}
