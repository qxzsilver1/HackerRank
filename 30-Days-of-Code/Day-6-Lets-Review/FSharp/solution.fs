open System

let stringSplitter line =
    line
    |> Seq.toArray
    |> Array.mapi (fun i c -> i, c)
    |> Array.partition (fun (i, _) -> i % 2 = 0)
    |> fun (firstHalf, secondHalf) ->
        firstHalf |> Array.map snd |> System.String,
        secondHalf |> Array.map snd |> System.String

Seq.init (Console.ReadLine() |> int) (fun _ -> Console.ReadLine())
|> Seq.map stringSplitter
|> Seq.iter (fun (firstHalf, secondHalf) -> printfn "%s %s" firstHalf secondHalf)
