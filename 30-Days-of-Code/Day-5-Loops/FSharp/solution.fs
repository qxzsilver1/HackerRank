open System

let n = Console.ReadLine() |> int

for i = 1 to 10 do
    let result = n*i
    printfn "%d x %d = %d" n i result
