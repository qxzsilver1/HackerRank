using System;
using System.Collections.Generic;
using System.IO;

class Solution {
    static void Main(String[] args) {
        double mealCost;
        int tipPercent;
        int taxPercent;
        
        mealCost = double.Parse(Console.ReadLine());
        tipPercent = int.Parse(Console.ReadLine());
        taxPercent = int.Parse(Console.ReadLine());
        
        double tip = mealCost * ((double)tipPercent/((double)100));
        double tax = mealCost * ((double)taxPercent/((double)100));
        double totalCost = tip + tax + mealCost;
        
        Console.WriteLine("The total meal cost is {0:F0} dollars.", totalCost);
    }
}
