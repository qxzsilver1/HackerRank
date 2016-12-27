mealCost = io.read("*line")
tipPercent = tonumber(io.read("*line"))
taxPercent = tonumber(io.read("*line"))

tip = mealCost * (tipPercent / 100.0)
tax = mealCost * (taxPercent / 100.0)
totalCost = mealCost + tip + tax

roundedTotalCost = math.floor(totalCost + 0.5)

print(string.format("The total meal cost is %d dollars.\n", roundedTotalCost))
