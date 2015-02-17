//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// The for loop is a construct that allows you to repeatedly execute a block of code.
// The structure of the for loop allows for making counter-controlled loops.

// Unlike the for loop, the while and do while loops simply allow for executing a block of code without providing any construct for keeping a counter.
// The drawback of these loops is that you can easily create a loop that executes a block of code infinitely, fondly referred to as an"infinite loop"



#include <stdio.h>

int main()
{
    
    // for loop
    
    int many[] = {2, 4, 8};
    int sum = 0;
    
    // i < 3 because there are only 3 items in the array at indexes 0, 1, 2
    for (int i = 0; i < 3; i++) {
        sum += many[i];
        printf("%d\n", sum);
    }
    
    
    // an extra space
    printf("\n");
    
    
    // while loop
    
    char letters[] = {'a', 'b', 'c'};
    int w = 0;
    
    while (w < 3) {
        printf("%c\n", letters[w]);
        w++;
    }
    
    
    // an extra line
    printf("\n");
    
    
    // do-while loop, the do is always evaluated at least once 
    
    // reset w to 0
    w = 0;
    do {
        printf("%c\n", letters[w]);
        w++;
    } while (w < 3);
    
    
    return 0;
}

