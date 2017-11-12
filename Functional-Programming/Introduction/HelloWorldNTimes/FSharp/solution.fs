open System

// using loop to iterate over the range
let printHello1 n =
  for _ in 1..n do
    printfn "Hello World"

// generate sequence and invoke function for each item

let printHello2 n =
  seq { 1 .. n }
  |> Seq.iter (fun _ -> printfn "Hello World")

// call itself recursively until end

let rec printHello3 n =
  match n with
  | 0 -> ()
  | _ -> printfn "Hello World"
         printHello3 (n-1) 

[<EntryPoint>]
let main argv = 
    Console.ReadLine()
    |> int
    |> printHello2
    0 // return an integer exit code
