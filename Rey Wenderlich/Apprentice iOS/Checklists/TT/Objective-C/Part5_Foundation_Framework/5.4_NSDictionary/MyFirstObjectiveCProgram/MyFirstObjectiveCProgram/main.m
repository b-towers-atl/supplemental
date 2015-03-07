//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

/*
 While an array stores a sequential list of objects. A dictionary stores unordered associations of keys and values. A key within an NSDictionary identifies its related value.
 
 The NSDictionary class is a collection of key-value pairs.
 
 Provide the dictionary with a key, and the dictionary will return you the associated value.
 
 Dictionary keys can be any object as long as it's unique.
 
 The most common key is a string.
 */

#import <Cocoa/Cocoa.h>

int main()
{

    // using alloc init
    NSDictionary *book = [[NSDictionary alloc] initWithObjectsAndKeys:@"The Cat in the Hat", @"title", @"Dr. Seuss", @"author", nil];
    NSLog(@"%@", book);
    
    
    // literal syntax is much more understandable (key:value, key:value)
    NSDictionary *book2 = @{ @"title":@"The Cat in the Hat", @"author":@"Dr. Seuss" };
    NSLog(@"%@", book2);
    
    
    // accessing a value
    NSString *string = [book objectForKey:@"author"];
    NSLog(@"string %@", string);
    
    
    // working with NSMutableDictionary and adding a new key-value pair
    NSMutableDictionary *mutableBook = [NSMutableDictionary dictionaryWithDictionary:book];
    [mutableBook setObject:@1957 forKey:@"year"];
    NSLog(@"%@", mutableBook);
    
    
    // iterating over a dictionary
    for (NSString *string in [mutableBook allKeys]) {
        NSLog(@"%@: %@", string, [mutableBook objectForKey:string]);
    }
    
    return 0;
}
