Imports System

Module Solution
    
    Public Shared Sub Main()
        Dim i As Integer = 4
        Dim d As Decimal = 4.0
        Dim s As String = "HackerRank "
        
        'Declare second integer, double, and String variables.
        Dim j As Integer
        Dim e As Decimal
        Dim t As String
        
        'Read and save an integer, double, and String to your variables.
        j = CInt(Console.ReadLine())
        e = CDec(Console.ReadLine())
        t = Console.ReadLine()
        
        'Print the sum of both integer variables on a new line.
        Console.WriteLine(i+j)
        
        'Print the sum of the double variables on a new line.
        Console.WriteLine(d+e)
        
        'Concatenate and print the String variables on a new line
        'The 's' variable above should be printed first.
        Console.WriteLine(s+t)

    End Sub
End Module
