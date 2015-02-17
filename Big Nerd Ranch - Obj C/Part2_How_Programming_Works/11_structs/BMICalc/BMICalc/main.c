//
//  main.c
//  BMICalc
//
//  Created by Bobby Towers on 1/18/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>

// declaration of the struct
//struct Person {
//    float heightInMeters;
//    int weightInKilos;
//};

// declaration of the struct using typedef
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person aHuman) {
    return aHuman.weightInKilos / (aHuman.heightInMeters * aHuman.heightInMeters);
}

int main(int argc, const char * argv[]) {
    
//    struct Person mikey;
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    float mikeyBMI = bodyMassIndex(mikey);
    
//    struct Person aaron;
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    float aaronBMI = bodyMassIndex(aaron);
    
    
    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    printf("mikey weighs %d kilograms\n", mikey.weightInKilos);
    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
    printf("aaron weighs %d kilograms\n\n", aaron.weightInKilos);
    
    printf("mikey's BMI is %.2f\n", mikeyBMI);
    printf("aaron's BMI is %.2f\n", aaronBMI);
    
    
    return 0;
}
