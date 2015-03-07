//
//  main.m
//  ProperNameAndRegularWords
//
//  Created by Bobby Towers on 1/23/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

// use the code provided to write a program that finds common proper names that are also regular words:
// words present in the proper names list that are also present (lowercase) in the regular words list

/*
@autoreleasepool {
    
    // read in a file as a huge string (ignoring the possibility of an error)
    NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
    
    // break it into an array of strings
    NSArray *namesArray = [nameString componentsSeparatedByString:@"\n"];
    
    // go through the array one string at a time
    for (NSString *n in namesArray) {
        
        // look for the string "aa" in a case-insensitive manner
        NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
        
        // was it found?
        if (r.location != NSNotFound) {
            NSLog(@"%@", n);
        }
        
    }
    
}
*/

//      use these two files:
//      /usr/share/dict/propernames
//      /usr/share/dict/words

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // read in both files
        NSString *properNamesString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        
        // break both files into arrays
        NSArray *properNamesArray = [properNamesString componentsSeparatedByString:@"\n"];
        NSArray *wordsArray = [wordsString componentsSeparatedByString:@"\n"];
        
        
        // test both arrays real quick
//        NSLog(@"%@", properNamesArray);
//        NSLog(@"%@", wordsArray);
        // ****Apparently, there are duplicate words/names in both lower case and capitalized in the words list!!!
        
        
        // so let's step back and think about the problem real quick
        // we need to go through the words list first and then determine if proper names exists in it
        // I think we can iterate through each name in the names array, then compare it with words array
        // I looked up NSComparisonResult
    
    
        
        // double for loop to compare our array of strings
        for (NSString *name in properNamesArray) {
            
            for (NSString *word in wordsArray) {
                
                // I had to search for this code because even though I had a double for loop,
                // I was wrongly incorporating rangeOfString:options: method since it
                // was in the sample code
                if ([name caseInsensitiveCompare:word] == NSOrderedSame) {
                    
                    NSLog(@"%@ %@", name, word);
                    
                }
                
            }

        }
        
    }
    return 0;
}
