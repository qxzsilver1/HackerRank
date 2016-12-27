mealCost = 0.0
tipPercent = 0
taxPercent = 0

mealCost = gets.to_f
tipPercent = gets.to_i
taxPercent = gets.to_i

tip = mealCost * (tipPercent / 100.0)
tax = mealCost * (taxPercent / 100.0)
totalCost = mealCost + tip + tax

roundedTotalCost = totalCost.round

printf "The total meal cost is %d dollars.\n", roundedTotalCost
