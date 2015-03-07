//
//  main.c
//  Degrees
//
//  Created by Bobby Towers on 1/10/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// declare a global variable
// a static variable is only accessible from the code in the file where it was declared
// in this case, Degrees main file
static float lastTemperature = 50.0; // runs the same as... float lastTemperature;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit.\n", freezeInF);
    printf("The last temperature converted was %f.\n", lastTemperature);
    
    return EXIT_SUCCESS;
}
