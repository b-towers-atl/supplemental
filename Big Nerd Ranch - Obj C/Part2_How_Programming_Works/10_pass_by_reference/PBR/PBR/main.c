//
//  main.c
//  PBR
//
//  Created by Bobby Towers on 1/17/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInces(double meters, unsigned int *ftPtr, double *inPtr)
{
    // this function assumes meters is non-negative
    
    
    // convert the number of meters into a floating-point number of feet
    double rawFeet = meters * 3.281;
    
    
    // how many complete feet as an unsigned int?
    // floor() cuts off fractional part by rounding
    unsigned int feet = (unsigned int)floor(rawFeet);
    
    
    if (ftPtr) {    // checks to see if ftPtr points to a null address
        // store the number of feet at the supplied address
        printf("Storing %u feet to the address %p\n", feet, ftPtr);
        *ftPtr = feet;
    }
    
    
    // calculate inches
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    

    if (inPtr) {    // checks to see if inPtr points to a null address
        // store the number of inches at the supplied address
        printf("Storing %.2f inches to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
    
}


int main(int argc, const char * argv[]) {

    // pi pass-by-reference
    
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    
    // modf() returns the fractional part and copies the integer part to the address you supply
    // 3.14, 3 is the integer part, .14 is the fractional part
    
    
    // pass the address of integerPart as second argument
    fractionPart = modf(pi, &integerPart);
    
    
    // find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    printf("This is known as pass-by-reference\n\n");
    // that is, you supply an address (known as a "reference") and the function puts data there
    
    
    
    // metersToFeetAndInches pass-by-reference custom function
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInces(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    
    return 0;
}
