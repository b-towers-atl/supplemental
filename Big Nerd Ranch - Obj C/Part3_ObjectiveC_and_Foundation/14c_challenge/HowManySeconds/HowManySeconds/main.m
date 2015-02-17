//
//  main.m
//  HowManySeconds
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

// challenge: use two instances of NSDate to figure out how many seconds you have been alive

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // alloc is a class method that returns a pointer to a new instance
        // init is an instance method that initializes an instance so it is ready for work
        NSDateComponents *myComponents = [[NSDateComponents alloc] init];
        // setting myComponents to my birth date (hours, minutes, seconds are made up)
        [myComponents setYear: 1991];
        [myComponents setMonth: 11];
        [myComponents setDay: 30];
        [myComponents setHour: 20];
        [myComponents setMinute: 15];
        [myComponents setSecond: 0];
        
        // initWithCalendarIdentifier: accepts NSGregorianCalendar argument and initializes the new pointer
        NSCalendar *myCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        // this is essentially what the two dates will rely on, a Gregorian calendar
        
        
        // using two different ways to get the two dates
        // dateFromComponents is an instance method sent to the instance myCalendar (an instance of NSCalendar class)
        // and returns a new NSDate object representing absolute time calculated based on NSDateComponents provided as an argument
        NSDate *bornDate = [myCalendar dateFromComponents:myComponents];
        NSDate *nowDate = [[NSDate alloc] init];
        
        // nowDate is sent the message timeIntervalSinceDate
        // which accepts argument bornDate (another instance of NSDate)
        double secondsAlive = [nowDate timeIntervalSinceDate:bornDate];
        
        NSLog(@"I've been alive for %.0f seconds", secondsAlive);
        

    }
    return 0;
}