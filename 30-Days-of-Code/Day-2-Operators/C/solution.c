#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {

    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    double mealCost;
    int tipPercent;
    int taxPercent;
    
    scanf("\n%lf", &mealCost);
    scanf("%d", &tipPercent);
    scanf("%d", &taxPercent);
    
    double tip = mealCost * ((double)tipPercent/((double)100));
    double tax = mealCost * ((double)taxPercent/((double)100));
    double totalCost = tip + tax + mealCost;
    
    printf("The total meal cost is %.0lf dollars.\n", round(totalCost));
    
    return 0;
}
