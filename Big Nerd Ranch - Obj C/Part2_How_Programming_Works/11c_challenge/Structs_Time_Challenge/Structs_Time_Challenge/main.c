//
//  main.c
//  Structs_Time_Challenge
//
//  Created by Bobby Towers on 1/18/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>
#include <time.h>

/*
struct tm {
    int tm_sec;     // seconds after the minute [0-60]
    int tm_min;     // minutes after hour [0-59]
    int tm_hour;    // hours since midnight [0-23]
    int tm_mday;    // day of the month [1-31]
    int tm_mon;     // months since January [0-11]
    int tm_year;    // years since 1900
    int tm_wday;    // days since Sunday [0-6]
    int tm_yday;    // days since January 1 [0-365]
    int tm_isdst;   // Daylight Savings Time flag
    long tm_gmtoff; // offset from CUT in seconds
    char *tm_zone;  // timezone abbreviation
};

// function time() returns number of seconds since first moment of 1970 Greenwich, England
// function localtime_r() can read that duration and pack a struct tm with appropriate values
//      it actually takes the address of the number of seconds since 1970 and the address of an struct tm
*/

int main(int argc, const char * argv[]) {
    
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    // reads duration and packs the now struct with appropriate corresponding values
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    
    // challenge: write a program to tell you what the date will be in 4 million seconds
    long secondsSince1970And4MillionSeconds = time(NULL) + 4000000;
    struct tm future;
    localtime_r(&secondsSince1970And4MillionSeconds, &future);
    
    // need to add +1 to months because January is 0, and +1900 to years because it starts at 1900
    printf("The current time is %d:%d:%d\n", now.tm_hour % 12, now.tm_min, now.tm_sec);
    
    printf("The current date is %d-%d-%d\n", now.tm_mon + 1, now.tm_mday, now.tm_year + 1900);
    
    printf("The date 4 million seconds from now will be %d-%d-%d\n",
           future.tm_mon + 1, future.tm_mday, future.tm_year + 1900);

    return 0;
}
