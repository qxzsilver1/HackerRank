open System

[<EntryPoint>]
let main argv = 
    let (_, n) = Int32.TryParse(Console.ReadLine())
    
    if n % 2 = 1 then printfn "Weird"
    elif n >= 6 && n <= 20 then printfn "Weird"
    else printfn "Not Weird"
    
    0
