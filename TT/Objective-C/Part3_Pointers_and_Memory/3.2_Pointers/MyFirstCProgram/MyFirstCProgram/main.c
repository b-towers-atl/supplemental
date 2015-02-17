//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

// Each memory location has an address which is stored within the pointer.
// Pointers are used to reference a location in memory and access the memory address.

#include <stdio.h>

int main()
{

    // declaration of pointer, * indicates pointer type
    char *letter;
    
    // char variable c has in it stored the value 'k'
    char c = 'k';
    
    
    
    
    // *letter points to address of c
    // we're pointing to the address in memory in which 'k' is stored
    // we're not storing the value of 'k', we're merely pointing at it
    letter = &c;    // letter is pointing at the address of c, not storing it
    
    
    
    // *letter is known as "dereferencing" a pointer, or obtaining the actual value
    // syntactically it looks the same as declaration, but it is not
    printf("%c is always the same as %c\n", c, *letter);
    
    // when we declare the pointer, we use *, we want to get the value, we use the * as well
    
    
    
    c = 'q';
    // we change the value of variable c, but letter keeps track of that value
    // because we haven't changed what letter is pointing to (it is still pointing to &c)
    printf("%c is always the same as %c\n", c, *letter);
    
    c = 'x';
    printf("%c is always the same as %c\n", c, *letter);
    
    
    
    char eldridge[] = "eldridge";   // eldridge is an array of chars
    
    // letter points to one of the values in the array at index 3 (the 4th item)
    letter = &eldridge[3];
    
    // this will print different values because letter is pointing to something different than c
    printf("%c is always the same as %c\n", c, *letter);
    printf("%c is in %s\n", *letter, eldridge);
    
    
    
    ++letter;   // this increments the pointer to one more thing along in the array
    printf("%c is in %s\n", *letter, eldridge);

    --letter;
    --letter;
    printf("%c is in %s\n", *letter, eldridge);
    
    
    return 0;
}

