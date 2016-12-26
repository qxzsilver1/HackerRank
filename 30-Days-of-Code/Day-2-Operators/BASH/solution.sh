read mealCost #get a line of input for meal cost, floating point value
read tipPercent #get a line of input for integer percent of tip
read taxPercent #get a line of input for integer percent of tax

tip=$(echo "$mealCost * $tipPercent / 100" | bc -l)
tax=$(echo "$mealCost * $taxPercent / 100" | bc -l)
totalCost=$(echo $mealCost + $tip + $tax | bc)

roundedTotalCost=${totalCost%.*}
echo "The total meal cost is $roundedTotalCost dollars."
