Imports System

Module Solution
    
    Public Shared Sub Main()
        Dim n As Integer = CInt(Console.ReadLine())
        
        For i As Integer = 1 To 10
        Console.WriteLine("{0} x {1} = {2}", n, i, n * i)
        Next

    End Sub
End Module
