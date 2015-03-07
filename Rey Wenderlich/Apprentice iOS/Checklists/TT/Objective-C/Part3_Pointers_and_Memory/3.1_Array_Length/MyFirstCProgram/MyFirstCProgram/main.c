//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// An array is nothing more than a pointer to a memory address

#include <stdio.h>

int main()
{
    
    float numbers[] = {11.1111, 22.2222, 33.3333};
    
    printf("Size of a float is %zu bytes\n", sizeof(float));
    printf("Size of the numbers array is %zu bytes\n", sizeof(numbers));
    printf("Array length of numbers is %zu\n", sizeof(numbers) / sizeof(float));
    
    return 0;
}

