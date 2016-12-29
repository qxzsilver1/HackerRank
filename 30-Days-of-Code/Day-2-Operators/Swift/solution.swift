import Foundation

var mealCost = Double(readLine()!)!
var tipPercent = Int(readLine()!)!
var taxPercent = Int(readLine()!)!

var tip = mealCost * (Double(tipPercent) / 100.0)
var tax = mealCost * (Double(taxPercent) / 100.0)
var totalCost = mealCost + tip + tax

var roundedTotalCost = Int(round(totalCost))

print("The total meal cost is \(roundedTotalCost) dollars.")
