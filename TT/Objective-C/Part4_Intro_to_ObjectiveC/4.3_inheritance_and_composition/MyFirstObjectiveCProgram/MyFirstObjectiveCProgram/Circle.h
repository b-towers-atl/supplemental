//
//  Circle.h
//  MyFirstObjectiveCProgram
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import "Shape.h"

// Circle has a superclass of Shape
// it will share common characteristics of Shape
// any method or property implemented in Shape will be available in Circle
// however, Circle has the option to change the implementation of those methods if it needs to
@interface Circle : Shape

@property(nonatomic) float radius;

@end
