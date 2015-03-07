//
//  Circle.m
//  MyFirstObjectiveCProgram
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import "Circle.h"

@implementation Circle

-(float)calculateArea {
    
    // self refers to this instance
    // so in this case, instance's radius times itself's radius, times pi, then return that
    return M_PI * self.radius * self.radius;
    
}

@end
