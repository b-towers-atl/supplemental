//
//  main.c
//  Address_Pointer_Challenge
//
//  Created by Bobby Towers on 1/17/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    // write a program that shows you how much memory a float consumes
    printf("A float is %zu bytes\n", sizeof(float));
    
    // a short is a 2-byte integer
    // one bit is used to hold the sign
    
    // 2-bytes contain 16 bits
    // largest unsigned number is 65535
    
    
    // sign - or + takes up 1 bit
    // smallest signed number is -32768
    // largest signed number is +32767
    // there is only one 0, not a -0 or a +0
    
    return 0;
}
