//
//  main.c
//  Turkey
//
//  Created by Bas Broek on 06-06-13.
//  Copyright (c) 2013 Bas Broek. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // Declare the variable called 'weight of type float
    // Put a number in that variable
    float weight = 14.2;
    
    // Log it to the user
    printf("The turkey weighs %f.\n", weight);
    
    // Declare another variable of type float
    // Calculate the cooking time and store it in the variable
    // In this case, '*' means 'multiplied by'
    float cookingTime = 15.0 * 15.0 * weight;
    
    // Log that to the user
    printf("Cook it for %f minutes.\n", cookingTime);
    
    // End this function and indicate sucess
    
    return 0;
}

