//
//  main.c
//  Coolness_v2
//
//  Created by Bobby Towers on 1/14/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <readline/readline.h>
#include <stdio.h>

int main(int argc, const char * argv[]) {

    printf("Who is cool?");
    
    const char *name = readline(NULL);
    
    printf("%s is cool!\n\n", name);
    
    return 0;
}
