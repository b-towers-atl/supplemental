//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// The @property is an Objective-C directive which declares the property for a class.
// It automatically creates an instance variable and getter and setter methods behind the scenes.

#import <Cocoa/Cocoa.h>
#import "Sphere.h"

int main()
{

    Sphere *ball = [[Sphere alloc] init];
    
    // using dot notation instead of the getter and setter methods
    ball.radius = 34;
    
    NSLog(@"ball radius is %f", ball.radius);
    
    return 0;
}
