//
//  Button.h
//  MyFirstObjectiveCProgram
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>

// we use @class Shape; rather than import because we just need to inform the compiler that we're referring to Shape
// we're not actually using any parts of the shape in the .h file
@class Shape;

@interface Button : NSObject

// this is polymorphism
// referring to a subclass via its superclass (ex: roundButton.shape = circle)
// the way to communicate with that subclass will be as if it is a base class Shape
// but its behavior will be the behavior that is unique for either circle or behavior that is unique to square
// For example, if we were to write a method that allowed a user to tap on the button, the way to figure out if the tap was on a round button would be very different than on a square button
// this is polymorphism, a way to get different behaviors but referring to something in one common way
@property (nonatomic, strong) Shape *shape;

@end
