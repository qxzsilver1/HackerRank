Imports System

Module Solution
    
    Public Shared Sub Main()
        Dim mealCost As Decimal = CDec(Console.ReadLine())
        Dim tipPercent As Integer = CInt(Console.ReadLine())
        Dim taxPercent As Integer = CInt(Console.ReadLine())
        
        Dim tip As Decimal = mealCost * (tipPercent / 100.0)
        Dim tax As Decimal = mealCost * (taxPercent / 100.0)
        Dim totalCost As Decimal = mealCost + tip + tax
        
        Dim roundedTotalCost As Integer = Math.Round(totalCost)
        
        Console.WriteLine("The total meal cost is {0} dollars.", roundedTotalCost)

    End Sub
End Module
