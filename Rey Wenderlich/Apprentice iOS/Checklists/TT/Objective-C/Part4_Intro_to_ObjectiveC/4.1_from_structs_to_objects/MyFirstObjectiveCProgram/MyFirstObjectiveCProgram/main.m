//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// procedural programming - functions and data are separate (c is a procedural language)
// procedural programming does not scale well
// object-oriented programming merges data and the functions that manipulate that data

#import <Cocoa/Cocoa.h>
#import "Sphere.h"
// we have to import Sphere.h class
// this allows the type Sphere and the methods that are available on Sphere to be known to anyone who wants to interact with it

int main()
{

    Sphere *ball = [[Sphere alloc] init];
    
    // we call the setRadius method, then pass it in 25
    [ball setRadius: 25];
    
    NSLog(@"ball radius is %f", [ball getRadius]);
    
    return 0;
}
