//
//  main.m
//  Groceries
//
//  Created by Bobby Towers on 1/23/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

// challenge: create a grocery list array and use fast enumeration to print your grocery list

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // create an empty mutable array
        NSMutableArray *groceryList = [NSMutableArray array];
        
        // create my strings using different methods
        NSString *groceryIntro = [[NSString alloc] initWithFormat:@"My grocery list is:"];
        NSString *groceryItem1 = @"Loaf of bread";
        NSString *groceryItem2 = @"Container of milk";
        NSString *groceryItem3 = @"Stick of butter";
        
        // filling the array using different methods
        groceryList = [NSMutableArray arrayWithObjects:groceryItem1, groceryItem2, nil];
        [groceryList addObject:groceryItem3];
        [groceryList insertObject:groceryIntro atIndex:0];
        
        // fast enumeration
        for (NSString *i in groceryList) {
            NSLog(@"%@", i);
        }
        
        // regular for loop for kicks and giggles
        for (int i = 0; i < groceryList.count; i++) {
            NSLog(@"%@", groceryList[i]);
        }
        
        
    }
    return 0;
}
