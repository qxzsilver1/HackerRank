" one way to get input - this should work
mealCost := stdin nextLine .
tipPercent := stdin nextLine .
taxPercent := stdin nextLine .
"

" another way to get input - this should work as well
inputStringOne := stdin nextLine.
mealCost := inputStringOne.

inputStringTwo := stdin nextLine.
tipPercent := inputStringTwo.

inputStringThree := stdin nextLine.
taxPercent := inputStringThree .
"

" the other way I did it since something doesn't work in HackerRank "
inputString := stdin contents .
"inputString inspect."

inputString := inputString replacingAllRegex: '\n' with: ',' .
inputString := inputString subStrings: $,.
inputString fold: [:concatenation :string | concatenation, '.', string ] .

mealCost := inputString at: 1 .
tipPercent := inputString at: 2 .
taxPercent := inputString at: 3 .
" end of getting input as string and readying the data "

mealCost := mealCost asNumber .
tipPercent := tipPercent asInteger .
taxPercent := taxPercent asInteger .

tip := mealCost * (tipPercent / 100.0) .
tax := mealCost * (taxPercent / 100.0) .
totalCost := mealCost + tip + tax .

roundedTotalCost := totalCost roundTo: 1 .
roundedTotalCost := roundedTotalCost asInteger .

Transcript show: 'The total meal cost is ', roundedTotalCost printString, ' dollars.'; cr .



