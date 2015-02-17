//
//  main.m
//  TimeAfterTime
//
//  Created by Bobby Towers on 1/19/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // class NSDate and an instance of NSDate is a point in time
        // *now is a pointer variable (indicated by *)
        // date is a class method, and returns the address of an instance of NSDate
        // this is a message sent to the NSDate class to execute the date method
        // and it is enclosed inside [square brackets]
        NSDate *now = [NSDate date];
        // this created an instance of NSDate, and it lives at the address stored in now
        // NSDate = receiver, date = selector
        // the receiver is a pointer to the object or class that has the method that you want to execute
        // a selector is the name of the method that you want to be executed
        
        
        NSLog(@"This NSDate object lives at %p", now);
        
        
        // %@ is an Obj-C token asking the object for a description of itself
        NSLog(@"The date is %@", now);
        
        
        // now that we have an instance of NSDate, messages can be sent to the new object
        // in this case, the new message is timeIntervalSince1970
        // this method returns (in sec as a double) the difference between 1970 and the instance of NSDate
        // we send the timeIntervalSince1970 message to the NSDate instance pointed to by now
        double seconds = [now timeIntervalSince1970];
        // now is the receiver, timeIntervalSince1970 is the selector
        
        
        NSLog(@"It has been %.0f seconds since the start of 1970.", seconds);
        
        
        
        // class method in action: NSDate *now = [NSDate date];
        // typically, class methods create an instance of the class and initialize its instance variables
        // instance method in action: double seconds = [now timeIntervalSince1970];
        // typically, instance methods retrieve information about or perform operations on the instance variables
        
        // instance methods tend to be more common
        // you send a message to a class to create an instance
        // the message causes a class method to be executed
        // once you have the instance, the instance will likely receive many messages
        // these messages will cause instance methods to be executed
        
        
        
        
        // sending bogus messages to see errors...
/*
        
        // timeIntervalSince1970 is an instance method sent to a NSDate class, so the selector should be a class method, not an instance method
        double testSeconds = [NSDate timeIntervalSince1970];
        
        // sends the date message to now pointer, but the date class method is sent to an instance, not NSDate class that acts as the receiver
        NSDate *testNow = [now date];
        
        
        // mistyped selector name error
        testSeconds = [now fooIntervalSince1970];
        
        // case sensitive typo, lowercase 'i' and 's'
        testSeconds = [now timeintervalsince1970];
 
*/
        
        
        
        
        
    }
    return 0;
}
