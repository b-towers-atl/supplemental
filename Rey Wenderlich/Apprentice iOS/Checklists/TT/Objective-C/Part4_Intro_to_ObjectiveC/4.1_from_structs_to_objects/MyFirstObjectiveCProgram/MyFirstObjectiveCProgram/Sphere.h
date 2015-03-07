//
//  Sphere.h
//  MyFirstObjectiveCProgram
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

// .h is what classes manipulate Sphere or the rest of the program that interacts with Sphere
// this is what they see
// this is the public face of the class

#import <Foundation/Foundation.h>

// Sphere is a subclass of NSObject
@interface Sphere : NSObject
{
    
    NSArray *_center;
    float _radius;
    
}

// instance methods are indicated by the - sign

// in OOP, we don't directly manipulate our instance variables
// we use setters and getters (which are methods)

-(void)setRadius:(float)radius;
-(float)getRadius;

// these will be the only way we interact with the entire class
// these methods, along with others, will send messages to the class that interact with Sphere
// the Sphere is an object we interact directly with and the data behind the object


-(void)setCenter:(NSArray *)center;
-(NSArray *)getCenter;

// "in Obj-C, everything is a pointer"
// we're always going to be returning pointers to classes


// combining the two to set center and radius
-(void)setCenter:(NSArray *)center andRadius:(float)radius;

@end
