//
//  Sphere.m
//  MyFirstObjectiveCProgram
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

// .m is in the background, it is the implementation

#import "Sphere.h"

@implementation Sphere

-(void)setRadius:(float)radius {
    
    // passing in the parameter (radius)
    // then assigning it to the instance variable (_radius)
    // this function is the pathway in to the data of the Sphere
    _radius = radius;
    
}

-(float)getRadius {
    
    return _radius;
    
}

-(void)setCenter:(NSArray *)center {

    _center = center;
    
}

-(NSArray *)getCenter {
    
    return _center;
    
}

-(void)setCenter:(NSArray *)center andRadius:(float)radius {
    
    _center = center;
    _radius = radius;
    
}

@end
