mealCost = String.to_float(String.trim(IO.gets("")))
tipPercent = String.to_integer(String.trim(IO.gets("")))
taxPercent = String.to_integer(String.trim(IO.gets("")))

tip = mealCost * (tipPercent / 100)
tax = mealCost * (taxPercent / 100)
totalCost = mealCost + tip + tax

roundedTotalCost = round(totalCost)

IO.puts("The total meal cost is #{roundedTotalCost} dollars.")
