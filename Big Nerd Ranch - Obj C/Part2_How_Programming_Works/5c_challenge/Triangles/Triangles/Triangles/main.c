//
//  main.c
//  Triangles
//
//  Created by Bobby Towers on 1/10/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#include <stdio.h>

float remainingAngle(firstAngle, secondAngle)
{
    float thirdAngle = 180.0 - firstAngle - secondAngle;
    return thirdAngle;
}

int main(int argc, const char * argv[]) {
    
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC); // output should be... The third angle is 90.00
    
    return 0;
}
