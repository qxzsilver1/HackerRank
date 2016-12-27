mealCost = 0.0
tipPercent = 0
taxPercent = 0

mealCost = eval(raw_input())
tipPercent = eval(raw_input())
taxPercent = eval(raw_input())

tip = mealCost * (tipPercent / 100.0)
tax = mealCost * (taxPercent / 100.0)
totalCost = mealCost + tip + tax

roundedTotalCost = round(totalCost)

print 'The total meal cost is %d dollars.' % roundedTotalCost
