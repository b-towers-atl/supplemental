//
//  main.c
//  CountDown
//
//  Created by Bobby Towers on 1/13/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <readline/readline.h>
#include <stdio.h>
#include <stdlib.h>

void countDown() {
    
    int i = 99;
    
    while ((i < 100) && (i >= 0)) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
        i -= 3;
    }
}

void countDownFor() {
    int i;
    for (i = 99; i < 100 && i >= 0; i -= 3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }
}

void askCountDown() {
    int ask;
    int i;
    printf("Where should I start the countdown? \n");
    const char *askNum = readline(NULL);
    ask = atoi(askNum);
    
    for (i = ask; (i < ask + 1) && (i >= 0); i -= 3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }
}

int main(int argc, const char * argv[]) {

    countDown();
    
    printf("Now here is the for loop.\n");
    
    countDownFor();
    
    askCountDown();
    
    return 0;
}
