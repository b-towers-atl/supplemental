//
//  main.c
//  Squarer
//
//  Created by Bobby Towers on 1/11/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>

int squareFunction(n)
{
    int squared = n * n;
    return squared;
}

int main(int argc, const char * argv[]) {

    int myNumber = 5;
    printf("\"%d\" squared is \"%d\"\n", myNumber, squareFunction(myNumber));
    
    return 0;
}
