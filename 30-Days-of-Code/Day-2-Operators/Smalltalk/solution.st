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

"

inputS := stdin contents.
inputS inspect .

inputStringOne := stdin nextLine.
mealCost := inputStringOne.

Transcript show: inputStringOne; cr .

inputStringTwo := stdin nextLine.
tipPercent := inputStringTwo.

Transcript show: inputStringTwo; cr .

inputString := stdin nextLine.
taxPercent := inputString .

mealCost inspect .
tipPercent inspect .
taxPercent inspect .

Transcript show: mealCost; cr .
Transcript show: tipPercent; cr .

tip := mealCost * (tipPercent / 100.0) .
tax := mealCost * (taxPercent / 100.0) .
totalCost := mealCost + tip + tax .

Transcript show: 'The total meal cost is ', mealCost printString, 'dollars.'; cr ."
