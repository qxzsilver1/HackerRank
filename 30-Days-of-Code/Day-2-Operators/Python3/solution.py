mealCost = 0.0
tipPercent = 0
taxPercent = 0

mealCost = eval(input())
tipPercent = eval(input())
taxPercent = eval(input())

tip = mealCost * (tipPercent / 100.0)
tax = mealCost * (taxPercent / 100.0)
totalCost = mealCost + tip + tax

roundedTotalCost = round(totalCost)

print("The total meal cost is {} dollars.".format(roundedTotalCost))
