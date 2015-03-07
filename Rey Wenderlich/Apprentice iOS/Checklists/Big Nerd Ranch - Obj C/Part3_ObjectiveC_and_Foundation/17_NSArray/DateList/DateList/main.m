//
//  main.m
//  DateList
//
//  Created by Bobby Towers on 1/23/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // create an array containing all three
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        
        
//        // print a couple of dates
//        NSLog(@"The first date is %@", dateList[0]);
//        NSLog(@"The third date is %@", dateList[2]);
//        
//        // how many dates are in the array?
//        NSLog(@"There are %lu dates", [dateList count]);
        
        
        
        // crashing the program, out of range error
//        NSLog(@"The fourth date is %@", dateList[3]);
        
        
        
        // iterating over the array
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Regular for loop. Here is a date: %@", d);
        }
        
        
        // using a for-in loop aka fast enumeration
        for (NSDate *d in dateList) {
            NSLog(@"For-in loop. Here is a date: %@", d);
        }
        
        
        
        // working with mutable arrays
        // create an empty mutable array
        NSMutableArray *mutDateList = [NSMutableArray array];
        [mutDateList addObject:now];
        [mutDateList addObject:tomorrow];
        
        // add yesterday at the beginning of the list
        [mutDateList insertObject:yesterday atIndex:0];
        
        
        // more practice iterating over
        for (NSDate *md in mutDateList) {
            NSLog(@"Mutable array. Here is a date: %@", md);
        }
        
        // remove yesterday
        [mutDateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", mutDateList[0]);
        
        
        
        
        // working with old school array methods
        
        // arrayWithObjects method
        NSMutableArray *myArray = [NSMutableArray arrayWithObjects:@0.5, @23, @15.23, @1025.2015, nil];
        NSLog(@"myArray is %@", myArray);
        
        // arrayAtIndex method
        NSLog(@"The third number is %@", [myArray objectAtIndex:2]);
        NSLog(@"The first number is %@", [myArray objectAtIndex:0]);
        NSLog(@"The second number is %@", [myArray objectAtIndex:1]);
    }
                                   
    return 0;
}
