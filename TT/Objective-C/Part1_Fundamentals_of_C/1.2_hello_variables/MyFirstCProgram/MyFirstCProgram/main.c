//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// A variable is a name given to a computer memory location that a computer program can manipulate.
// Programs store, retrieve, and modify variables.

#include <stdio.h>

int main()
{
    
    int days_in_a_week = 7;
    float cm_to_in = 2.54;
    char the_w;
    the_w = 'W';

    
    printf("%d days in a week.\n", days_in_a_week);
    printf("%f cm to inches.\n", cm_to_in);
    printf("%c\n", the_w);
    return 0;
}

