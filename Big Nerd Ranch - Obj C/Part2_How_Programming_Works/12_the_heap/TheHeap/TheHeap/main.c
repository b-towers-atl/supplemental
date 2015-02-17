//
//  main.c
//  TheHeap
//
//  Created by Bobby Towers on 1/18/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {

    // declare a pointer
    float *startOfBuffer;
    
    // ask to use some bytes from the heap
    // in this case, we need to determine how large a float is
    // and then, because we are asking to allocate 1000 floats, we multiply it by 1000
    startOfBuffer = malloc(1000 * sizeof(float));
    
    // ...use the buffer here...
    
    // relinquish your claim on the memory so it can be reused
    free(startOfBuffer);
    
    // forget where that memory is
    startOfBuffer = NULL;
    
    return 0;
}
