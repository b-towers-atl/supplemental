//
//  main.m
//  StringsChallengeReadLine
//
//  Created by Bobby Towers on 1/22/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

// re-write the readline() challenge from Ch 8 to use an NSString and NSLog() rather than a C string and printf()

// help I seeked on BNR forums: need to go to "Build Phases" -> "Link Binary with Libraries" + libreadline.dylib
// also import readline

#import <Foundation/Foundation.h>
#import <stdlib.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    
    NSLog(@"Who is cool?");
    
    const char *inputRead = readline(NULL);
        
    NSString *inputString = [NSString stringWithUTF8String:inputRead];
        
    NSLog(@"%@ is cool!", inputString);
    
    return 0;
}
