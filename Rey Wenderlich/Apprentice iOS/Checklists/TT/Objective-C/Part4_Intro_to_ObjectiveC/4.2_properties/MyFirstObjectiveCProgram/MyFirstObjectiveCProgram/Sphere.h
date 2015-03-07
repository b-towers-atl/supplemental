//
//  Sphere.h
//  MyFirstObjectiveCProgram
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

// we can remove our instance variables and make them into properties

#import <Foundation/Foundation.h>

@interface Sphere : NSObject

@property(nonatomic) float radius;

@property(nonatomic, strong) NSArray *center;

-(void)setCenter:(NSArray *)center andRadius:(float)radius;

@end
