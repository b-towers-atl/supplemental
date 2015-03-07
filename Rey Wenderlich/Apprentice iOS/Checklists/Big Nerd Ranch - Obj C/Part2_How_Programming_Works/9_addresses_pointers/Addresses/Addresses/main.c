//
//  main.c
//  Addresses
//
//  Created by Bobby Towers on 1/14/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    // standard declaration
    int i = 17;
    
    // addressOfI is a pointer to an address that can store an int
    // &i accesses the address
    int *addressOfI;
    addressOfI = &i;
    // int *addressOfI = &i;
    
    
    
    
    // %p token to replace with a memory address
    printf("i stores its value at %p\n", addressOfI);
    printf("i stores its value at %p\n", &i);
    
    // getting the address of a function (simply just using its name)
    printf("this function starts at %p\n\n", main);
    
    
    
    
    // retrieving the data stored in a memory address
    // this actually reads the int value stored at the address stored in addressOfI
    // also known as "dereferencing" the pointer
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    
    // stores the new data at the address of i
    // anytime *variable is on the left on an assignment, it stores data at the new address
    *addressOfI = 89;
    printf("Now i is %d\n\n", i);
    
    
    
    
    
    // determining how much bytes is in a data type
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    
    // determining how much bytes is in the i variable
    printf("Variable i is equal to %d and is %zu bytes\n", i, sizeof(i));
    
    // determining how much bytes is addressOfI
    printf("The addressOfI is %zu bytes\n\n", sizeof(addressOfI));
    
    
    
    
    
    // dealing with nulls
    float *myPointer;
    myPointer = NULL;
    
    
    float actualGravity;
    float measuredGravity = 1.0;
    float *measuredGravityPtr = &measuredGravity;
    // *measuredGravityPtr = 2.0; // this code doesn't work because *measuredGravityPtr is a pointer, not a variable
    // measuredGravityPtr = 2.0; // this code doesn't work either because it is a POINTER to a float
    // not a variable that stores the value of a float itself
    // (it simply HOLDS AN ADDRESS where a float may be stored)

    
    if (*measuredGravityPtr == 1.0) {
        printf("measuredGravityPtr = %p\n", measuredGravityPtr);
        printf("measuredGravity = %f\n\n", measuredGravity);
        
        measuredGravityPtr = NULL;
        actualGravity = 2.0;
        // measuredGravity = NULL; // incompatible
        // *measuredGravityPtr = NULL; // incompatible
        
        printf("actualGravity = %f\n", actualGravity);
        printf("measuredGravityPtr = %p\n", measuredGravityPtr);        
        printf("measuredGravity = %f\n", measuredGravity);
    } else {
        actualGravity = 1.8;
        printf("actualGravity = %p\n", measuredGravityPtr);
    }
    
    
  
    
    
    
    return 0;
}
