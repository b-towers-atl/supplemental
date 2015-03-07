//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// An array in C is a mechanism for storing multiple values of the same data type.
// The values are indexed for easy access. The index always starts at zero.

#include <stdio.h>

int main()
{
    float numbers_geek_love[3];
    
    numbers_geek_love[0] = 3.1415;
    numbers_geek_love[1] = 1.6180;
    numbers_geek_love[2] = 1.4142;
    
    printf("Pi: %f\n", numbers_geek_love[0]);
    printf("Golden ratio: %f\n", numbers_geek_love[1]);
    printf("Square root of 2: %f\n\n", numbers_geek_love[2]);
    
    int primes[] = {2, 3, 5, 7};
    // didn't have to insert a size for the array when we declare and initialize
    
    printf("First prime number: %d\n", primes[0]);
    printf("Second prime number: %d\n", primes[1]);
    printf("Third prime number: %d\n", primes[2]);
    printf("Fourth prime number: %d\n\n", primes[3]);
    printf("All the prime numbers in the primes array:\n %d %d %d %d\n",
           primes[0], primes[1], primes[2], primes[3]);
    
    return 0;
}

