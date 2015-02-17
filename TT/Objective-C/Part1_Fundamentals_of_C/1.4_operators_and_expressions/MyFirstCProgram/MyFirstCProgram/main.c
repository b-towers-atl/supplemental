//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// Operators specify how variables are manipulated.
// Expressions combine variables to produce new values.
// C supports the typical binary operators: addition, subtraction, multiplication, and division.
// C also provides unary operators.

#include <stdio.h>

int main()
{
    int a = 9;
    printf("va: %d\n", a);
    
    // assigns a to c, then a increments by 1 since ++ is afterwards
    int c = a++;
    printf("c: %d\na after increment: %d\n", c, a);
    
    // decrements a by 1 first because -- is before a, then assigns it to d
    int d = --a;
    printf("d: %d\na after decrement: %d\n", d, a);
    
    // assigns a to e first, then decrements by 1
    int e = a--;
    printf("e: %d\na after decrement: %d\n", e, a);
    
    int b = a % 3;
    printf("b: %d\n", b);
    
    float fa = 5.0 / .5;
    printf("fa: %f\n", fa);
    
    // compact form same as fa = fa * 10;
    fa *= 10;
    printf("fa: %f\n", fa);

    return 0;
}

