//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// A struct - as the name suggests - is a structured group of values.
// Create a struct to store multiple data types like: a float, int, or char within a single struct.
// Writing well defined functions with a focus is called "encapsulation"
// The goal of encapsulation is to write small functions that manage the tedious aspects of programming

#include <stdio.h>


// declaration of the Sphere struct
typedef struct {
    // this is a container in which we can put anything that describes our sphere
    // aka a heterogeneous type
    
    float center[3];    // an array of 3 elements, holding one for x, y, z
    float radius;
    
    // each one of the features in a struct is called a "field"
    
} Sphere;


// declaration of Sphere functions, makeSphere
// note: we use * when using an array as a parameter
Sphere makeSphere(float *inputCenter, float inputRadius);


int main()
{
/*
    // declaration of ball
    Sphere ball;

    // we access the fields from the struct with dot notation
    ball.center[0] = 24;
    ball.center[1] = 32;
    ball.center[2] = 45;
    ball.radius = 67;
*/
    // instead of the code above, we will use the makeSphere function
    float ballCenter[] = {24, 32, 45};
    float ballRadius = 67;
    
    // the returned sphere is assigned to ball
    Sphere ball = makeSphere(ballCenter, ballRadius);
    
    
    
    printf("The center is at x:%.2f, y:%.2f, z:%.2f with a radius of %.2f\n",
           ball.center[0], ball.center[1], ball.center[2], ball.radius);
    
    return 0;
}

Sphere makeSphere(float *inputCenter, float inputRadius)
{
    Sphere sphere;
    
    sphere.center[0] = inputCenter[0];
    sphere.center[1] = inputCenter[0];
    sphere.center[2] = inputCenter[0];
    
    sphere.radius = inputRadius;
    
    return sphere;
}

