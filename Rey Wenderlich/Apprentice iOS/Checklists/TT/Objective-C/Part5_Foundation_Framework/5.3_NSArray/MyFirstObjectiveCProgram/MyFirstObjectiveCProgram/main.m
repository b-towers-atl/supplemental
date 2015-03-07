//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

/*
 NSArray and NSDictionary are known as container classes.
 
 A list can be created using a data type known as an array. An array is a special kind of list which holds an object and its location. This location is known as an index and it begins with zero.
 
 */

#import <Cocoa/Cocoa.h>

int main()
{

    NSArray *foo = [[NSArray alloc] initWithObjects:@"f", @"o", @"o", nil];
    NSLog(@"foo %@", foo);
    
    for (NSString *string in foo) {
        
        NSLog(@"%@", string);
        
    }
    
    NSString *thang = foo[2];
    NSLog(@"%@", thang);
    
    // using an array literal
    NSArray *foo2 = @[ @"f", @"o", @"o" ];
    NSLog(@"foo2 %@", foo2);
    
    // NSMutableArray
    NSMutableArray *lots = [[NSMutableArray alloc] init];
    lots[0] = @"bravo";
    lots[1] = @"charlie";
    lots[2] = @"delta";
    lots[3] = @"lima";
    NSLog(@"%@", lots);
    
    // removing item
    [lots removeObjectAtIndex:2];
    NSLog(@"%@", lots);
    
    return 0;
}
