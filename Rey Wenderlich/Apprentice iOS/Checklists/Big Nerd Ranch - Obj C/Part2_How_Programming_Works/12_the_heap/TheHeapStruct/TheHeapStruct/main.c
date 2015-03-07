//
//  main.c
//  TheHeapStruct
//
//  Created by Bobby Towers on 1/18/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct
{
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *inputPerson)
{
    return inputPerson->weightInKilos / (inputPerson->heightInMeters * inputPerson->heightInMeters);
}

int main(int argc, const char * argv[]) {
    
    // allocate memory for one Person struct
    Person *mikey = (Person *)malloc(sizeof(Person));
    
    // fill in two members of the struct
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    
    // print out the BMI of the original Person
    float mikeyBMI = bodyMassIndex(mikey);
    printf("mikey has a BMI of %f\n", mikeyBMI);
    
    // let the memory be recycled
    free(mikey);
    
    // forget where it was
    mikey = NULL;
    
    return 0;
}
