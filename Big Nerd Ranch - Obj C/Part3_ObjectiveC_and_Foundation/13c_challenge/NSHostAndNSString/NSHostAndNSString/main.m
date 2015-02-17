//
//  main.m
//  NSHostAndNSString
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // use two classes from Foundation framework: NSHost and NSString
        
        // sends a message currentHost (a class method) to NSHost class to get an instance of NSHost
        NSHost *myHost = [NSHost currentHost];
        
        // localizedName is an instance method sent to myHost to return a string
        NSString *myLocalizedName = [myHost localizedName];
        
        NSLog(@"My computer's name: %@", myLocalizedName);
        
    }
    return 0;
}
