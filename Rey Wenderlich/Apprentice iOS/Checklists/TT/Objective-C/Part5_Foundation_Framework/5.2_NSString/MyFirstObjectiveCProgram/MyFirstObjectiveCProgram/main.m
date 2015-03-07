//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

/*
 An NSString class provides storage for a string along with a variety of methods to manipulate the string.
 
 NSString is the wrapper class for a string of characters.
 */

#import <Cocoa/Cocoa.h>

int main()
{

    NSString *alpha = @"alpha";
    NSString *delta = @"delta";
    NSLog(@"%@ %@", alpha, delta);
    
    NSString *concat = [[alpha stringByAppendingString:delta] stringByAppendingString:@"lotsmore"];
    NSLog(@"%@", concat);
    
    NSString *upper = [alpha uppercaseString];
    NSLog(@"%@", upper);
    
    return 0;
}
