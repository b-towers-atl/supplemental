//
//  main.c
//  PBR_Challenge
//
//  Created by Bobby Towers on 1/17/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//


// Challenge: change floor() and subtraction of its integer and fraction and use modf() instead

#include <stdio.h>
#include <math.h>

void metersToFeetAndInces(double meters, unsigned int *ftPtr, double *inPtr)
{
    // this function assumes meters is non-negative
    
    // declare variables
    double rawFeet = meters * 3.281;
    double feet;
    double inches;
    

    // calculate inches
    double fractionalFoot = modf(rawFeet, &feet);
    inches = fractionalFoot * 12.0;
    
    
    if (ftPtr) {
        printf("Storing %.2f feet to the address %p\n", feet, ftPtr);
        *ftPtr = feet;
    }
    
    if (inPtr) {
        printf("Storing %.2f inches to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
    
}


int main(int argc, const char * argv[]) {
    
    // declare variables
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    // conversion
    metersToFeetAndInces(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    
    return 0;
}
