//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// Learn how scope affects the visibility of a variable.
// Whenever you create a code block with curly braces { } any variables declared within that code block are visible and usable only within that code block.
// Whenever you write a function and declare local variables, those local variables are visible only within that function.

#include <stdio.h>

void scope_it_out();

int main()
{
    
    char bravo[] = "bravo";
    printf("%s\n", bravo);
    
    int threshold = 5;
    if (threshold > 3) {
        int alpha = 23;
        int beta = 32;
        printf("%d %d\n", alpha, beta);
    }

    // creates an error
//    printf("%d %d\n", alpha, beta);
    
    scope_it_out();
    
    return 0;
}

void scope_it_out() {
    
    char bravo[] = "gamma";
    printf("%s\n", bravo);
}