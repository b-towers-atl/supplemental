//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#include <stdio.h>

// Conditionals are the traffic cops of control flow in your code.
// They re-route the flow of execution through your program.
// In C they come in two basic flavors: The if-else statement and the switch statement.

int main()
{

    // using if-else statements
    
    int a = 11;
    int b = 23;
    int minimum;
    char min_value;
    
    if (a < b) {
        minimum = a;
        min_value = 'a';
    } else {
        minimum = b;
        min_value = 'b';
    }
    
    printf("%d %c\n\n", minimum, min_value);
    
    
    // using if-elseif-else with single statements (all in one line)
    
    char x = 'x';
    char y = 'y';
    char z = 'z';
    char letter = 'g';
    
    if (letter == x) printf("letter %c is %c\n", letter, x);
    else if (letter == y) printf("letter %c is %c\n", letter, y);
    else if (letter == z) printf("letter %c is %c\n", letter, z);
    else printf("letter %c is not found\n", letter);
    
    
    
    printf("\nNow using the switch statement\n");
    
    // using switch statements using x, y, z and letter char variables
    
    switch (letter) {
        case 'x':
            printf("letter %c is %c\n", letter, x);
            break;
        case 'y':
            printf("letter %c is %c\n", letter, y);
            break;
        case 'z':
            printf("letter %c is %c\n", letter, z);
            break;
        default:
            printf("letter %c is not found\n", letter);
            break;
    }
    
    
    
    return 0;
}

