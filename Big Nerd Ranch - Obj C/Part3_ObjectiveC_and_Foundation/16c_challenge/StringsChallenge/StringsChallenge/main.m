//
//  main.m
//  StringsChallenge
//
//  Created by Bobby Towers on 1/21/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

// challenge 1: rangeOfString: method is case sensitive.
// return to the NSString class reference and find the method that would do case-insensitive searches
// then find the NSString method that will return the actual portion of the string that was found


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *hello = @"Sorry I bumped into you there. Hello, my name is Bobby.";
        
        // using NSCaseInsensitiveSearch
        NSRange matcher = [hello rangeOfString:@"hello" options:NSCaseInsensitiveSearch];
        if (matcher.location == NSNotFound) {
            NSLog(@"Match not found.");
        } else {
            NSLog(@"Match found!");
        }
        
        
        // case sensitive test
        NSRange matcher2 = [hello rangeOfString:@"hello"];
        if (matcher2.location == NSNotFound) {
            NSLog(@"Match not found.");
        } else {
            NSLog(@"Match found!");
        }
        
        
        // testing to see my location and length
        NSLog(@"location %lu", matcher.location);
        NSLog(@"length %lu", matcher.length);
        
        
        
        // returning the actual portion of the string
        // substringWithRange takes an NSRange parameter which matcher is (a struct with location and length )
        NSString *myReturnString = [hello substringWithRange:matcher];
        NSLog(@"%@", myReturnString);
        
    }
    return 0;
}
