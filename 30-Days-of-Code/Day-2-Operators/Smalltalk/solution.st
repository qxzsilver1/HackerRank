mealCost := stdin nextLine .
mealCost inspect .
inputString := stdin nextLine .
tipPercent := stdin nextLine .
tipPercent inspect .
taxPercent := stdin nextLine .
taxPercent inspect .

Transcript show: mealCost; cr .
"
tip := mealCost * (tipPercent / 100.0) .
tax := mealCost * (taxPercent / 100.0) .
totalCost := mealCost + tip + tax .

Transcript show: 'The total meal cost is ', mealCost printString, 'dollars.'; cr ."
