Imports System

Module Solution
    
    Public Shared Sub Main()
        Dim num As Integer = CInt(Console.ReadLine())
        
        If num Mod 2 = 1 Then
            Console.WriteLine("Weird")
        ElseIf num >= 6 And num <= 20 Then
            Console.WriteLine("Weird")
        Else
            Console.WriteLine("Not Weird")
        End If

    End Sub
End Module
