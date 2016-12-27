package main

import (
    "fmt"
)

func main() {
           
    var mealCost float32
    var tipPercent uint32
    var taxPercent uint32
    
    fmt.Scanf("%f", &mealCost)
    fmt.Scanf("%d", &tipPercent)
    fmt.Scanf("%d", &taxPercent)
    
    var tip float32 = mealCost * (float32(tipPercent) / 100.0)
    var tax float32 = mealCost * (float32(taxPercent) / 100.0)
    
    var totalCost float32 = mealCost + tip + tax
    
    var roundedTotalCost uint32 = uint32(totalCost + 0.5)
    
    fmt.Printf("The total meal cost is %d dollars.\n", roundedTotalCost)

}
