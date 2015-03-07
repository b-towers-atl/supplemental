//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// Functions break large computing tasks into smaller ones.
// Functions enable you to build on what others have done before so you don’t have to start from scratch every time you want a particular kind of functionality.
// Learn how to create a function, pass parameters and use a function to return a value from it.

#include <stdio.h>

// declare the function
int funky_math(int a, int b);
int main()
{
    
    int foo = 24;
    int bar = 35;
    int result = funky_math(foo, bar);
    int lots = result * funky_math(foo, bar);
    
    printf("funky math = %d\n", funky_math(foo, bar));
    printf("result = %d\n", result);
    printf("lots = %d\n", lots);
    
    return 0;
}

// implmentation is separate from the declaration (and comes afterwards)
int funky_math(int a, int b) {
    
    return a + b + 343;
    
}