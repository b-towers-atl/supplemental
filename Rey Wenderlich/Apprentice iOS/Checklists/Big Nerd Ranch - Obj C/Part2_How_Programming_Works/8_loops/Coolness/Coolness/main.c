//
//  main.c
//  Coolness
//
//  Created by Bobby Towers on 1/12/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>

void forLoop(int num)
{
    for (int num; num < 12; num++) {
        printf("%d. AY-AYron is not cool\n", num);
    }
}

int main(int argc, const char * argv[]) {
    
    
    // while loop
    int i = 0;
    while (i < 12) {
        printf("%d. AY-AYron is cool\n", i);
        i++;
        // increments after i is printed, so 0 to 11
    }
    
    forLoop(i); // i is a local variable in while loop, so i remains 0 when it hits the forLoop function
    
    
    // another for loop
    int b;
    for (b = 0; b < 12; b++) {
        printf("Checking b = %d\n", b);
        if (b + 90 == b * b) {
            break;
        }
    }
    printf("The answer is %d.\n", b);
    
    
    // using continue in a for loop
    int z;
    for (z = 0; z < 15; z++) {
        if (z % 3 == 0) {
            continue; // continue skips the rest of the code block, but doesn't break
        }
        printf("Checking z = %d\n", z);
        if (z + 90 == z * z) {
            break;
        }
    }
    printf("The answer again is %d.\n", z);
    
    
    // using a do-while loop, which is seldom used
    z = 0;
    do {
        printf("ARE YOU HERE? AY-AY-RON? %d\n", z);
        z++;
    } while (z < 8);
    // or you can have a do-while statement all in one line
    // do { printf("ARE YOU HERE? AY-AY-RON?\n"); z++; } while (z < 8);
    
    
    return 0;
}
