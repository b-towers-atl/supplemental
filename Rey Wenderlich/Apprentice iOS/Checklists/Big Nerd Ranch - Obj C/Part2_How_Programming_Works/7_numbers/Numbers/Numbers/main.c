//
//  main.c
//  Numbers
//
//  Created by Bobby Towers on 1/12/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // for abs()
#include <math.h>   // for sin()

int main(int argc, const char * argv[]) {
    
    
    unsigned long x = 255;
    printf("x is %ld.\n", x);
    
    // octal and hex already assume the number was unsigned
    printf("In octal, x is %lo.\n", x);
    printf("In hexadecimal, x is %lx.\n", x);
     
    
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2); // prints 19
    printf("11 / 3 = %d\n", 11 / 3); // prints 3
    printf("11 / 3 = %d remainder of %d\n", 11 / 3, 11 % 3); // prints 3 and 2
    printf("11 / 3.0 = %f\n", 11 / (float)3); // prints 3.66...
    
//    does this only work on Obj-C?
//    NSInteger a = -5;
//    NSUInteger b = 6;
//    printf("Here they are: %ld, %lu \n", (long)a, (unsigned long)b);
    
    int xa = 5;
//    xa = xa + 1;
    xa++; // xa = 6
    xa--; // xa = 5
//    xa = xa + 5;
    xa += 5; // xa = 10
    
    printf("The absolute value of -5 is %d\n", abs(-5));
    
    double y = 12345.6789;
    printf("y is %.2f\n", y); // normal decimal notation
    printf("y is %.2e\n", y); // scientific notation
    // .2 limits to 2 digit places
    
    // Challenge: using the math library
    float radA = sin(1);
    double radB = sin(1);
    printf("radA: %.3f\nradB: %.3f\n", radA, radB);
    
    return 0;
}
