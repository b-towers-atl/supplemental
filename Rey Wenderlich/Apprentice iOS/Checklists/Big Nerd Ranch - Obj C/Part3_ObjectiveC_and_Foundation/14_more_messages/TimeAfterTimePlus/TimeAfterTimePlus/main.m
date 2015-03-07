//
//  main.m
//  TimeAfterTimePlus
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // code from TimeAfterTime
//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        // effectively does the same thing as: NSDate *now = [NSDate date];
        // it initializes the NSDate object to the current date and time, just like the date class method
        
        
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %.0f seconds since the start of 1970.", seconds);
        
        
        
        // we could nest our above message like this:
        /*
         
         double seconds = [[NSDate date] timeIntervalSince1970];
         
         // this effectively combines our lines
         // note: the system handles the message send on the inside first, then the message that contains it
         */
        
        
        
        // working with a message plus an argument, in this case, adding 100000 seconds to now instance
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds, it will be %@", later);
        
        // working with NSCalendar
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        
        // working with a method that takes 3 arguments
        // returns the day of the month
        // note: style-wise, line up colons
        unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                           inUnit:NSMonthCalendarUnit
                                          forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        
        
    }
    return 0;
}
