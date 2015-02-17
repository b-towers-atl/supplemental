//
//  main.m
//  NSString
//
//  Created by Bobby Towers on 1/21/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *lament = @"Why me!?";
        NSLog(@"%@", lament);
        
        NSString *pain = [lament uppercaseString];
        NSLog(@"%@", pain);
        
        // \u2661 equates to 1 character
        NSString *slogan = @"I \u2661 the Iron Yard!";
        NSLog(@"%@", slogan);
        
        NSUInteger charCount = [slogan length];
        NSLog(@"%lu", charCount);
        
        
        // working with isEqualToString method
        if ([slogan isEqualToString:lament]) {
            NSLog(@"%@ and %@ are equal", slogan, lament);
        } else {
            NSLog(@"%@ and %@ are unequal", slogan, lament);
        }
       
        
        // working with rangeOfString method, returns a struct consisting of NSUIntegers location and length
        NSRange match = [slogan rangeOfString:@"panda"];
        if (match.location == NSNotFound) {
            NSLog(@"No match found.");
        } else {
            NSLog(@"Match found!");
        }
    }
    return 0;
}