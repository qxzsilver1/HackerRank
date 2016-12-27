open System

[<EntryPoint>]
let main argv = 
    let (_, mealCost) = Double.TryParse(Console.ReadLine())
    let (_, tipPercent) = Int32.TryParse(Console.ReadLine())
    let (_, taxPercent) = Int32.TryParse(Console.ReadLine())
    
    let tip = mealCost * ((float) tipPercent / 100.0)
    let tax = mealCost * ((float) taxPercent / 100.0)
    
    let totalCost = mealCost + tip + tax
    
    let roundedTotalCost = Math.Round(totalCost)
    
    Console.WriteLine("The total meal cost is {0} dollars.", roundedTotalCost)
    
    0 
