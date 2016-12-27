import std.stdio;
import std.conv;
import std.math;

void main()
{
    double mealCost;
    int tipPercent;
    int taxPercent;
    
    readf("\n%s", &mealCost);
    readf("\n%s", &tipPercent);
    readf("%s", &taxPercent);
    
    double tip = mealCost * (cast(double)tipPercent/(cast(double)100));
    double tax = mealCost * (cast(double)taxPercent/(cast(double)100));
    double totalCost = tip + tax + mealCost;
    
    writef("The total meal cost is %.0f dollars.\n", round(totalCost));  
}
