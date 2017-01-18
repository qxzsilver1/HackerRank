Module Solution

    Public Shared Sub Main()
        Dim n As Integer = CType(Console.ReadLine(), Integer)

        For i As Integer = 0 To n - 1
            Dim s As String = Console.ReadLine()
            Dim firstHalf As String = String.Empty
            Dim secondHalf As String = String.Empty

            For j As Integer = 0 To s.Length - 1
                If j Mod 2 = 0 Then
                    firstHalf = String.Concat(firstHalf, s.Substring(j, 1))
                Else
                    secondHalf = String.Concat(secondHalf, s.Substring(j, 1))
                End If
            Next
            Console.WriteLine("{0} {1}", firstHalf, secondHalf)
        Next

    End Sub
End Module
