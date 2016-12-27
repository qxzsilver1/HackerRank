#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
        char inputString[7] = {0};
    
        //scanf("%s", inputString);
        fgets (inputString, 7, stdin);
        double mealCost = atof(inputString);
        fgets (inputString, 4, stdin);
        int tipPercent = atoi(inputString);
        fgets (inputString, 4, stdin);
        int taxPercent = atoi(inputString);
    
        double tip = mealCost * ((double)tipPercent/((double)100));
        double tax = mealCost * ((double)taxPercent/((double)100));
        double totalCost = tip + tax + mealCost;

        printf("The total meal cost is %.0lf dollars.\n", round(totalCost));

        [pool drain];
        return 0;
}
