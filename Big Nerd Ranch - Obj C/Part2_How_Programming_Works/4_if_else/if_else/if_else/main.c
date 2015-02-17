//
//  main.c
//  if_else
//
//  Created by Bobby Towers on 1/11/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

/*
 comparison operators
 <
 <=
 >
 >=
 ==
 !=
 
 logical operators
 &&
 ||
 !
 */

#include <stdio.h>

void expressionFunction()
{
    int i = 20;
    int j = 25;
    int k = (i > j) ? 10 : 5; // conditional operator
    
    if (5 < j - k) {
        printf("The first expression is true.");
    } else if (j > i) {
        printf("The second expression is true.");
    } else {
        printf("Neither expression is true.");
    }
}

int main(int argc, const char * argv[]) {

    expressionFunction(); // I predict it will run the first expression 
    
    return 0;
}
