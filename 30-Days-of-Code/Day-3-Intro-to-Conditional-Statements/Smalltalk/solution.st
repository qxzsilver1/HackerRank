inputString := stdin nextLine .

mealCost := mealCost asNumber .
tipPercent := tipPercent asInteger .
taxPercent := taxPercent asInteger .

tip := mealCost * (tipPercent / 100.0) .
tax := mealCost * (taxPercent / 100.0) .
totalCost := mealCost + tip + tax .

roundedTotalCost := totalCost roundTo: 1 .
roundedTotalCost := roundedTotalCost asInteger .

Transcript show: 'The total meal cost is ', roundedTotalCost printString, ' dollars.'; cr .
