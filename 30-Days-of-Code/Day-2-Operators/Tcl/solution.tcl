gets stdin mealCost
gets stdin tipPercent
gets stdin taxPercent

set tip [expr $mealCost * ($tipPercent / 100.0)]
set tax [expr $mealCost * ($taxPercent / 100.0)]
set totalCost [expr $mealCost + $tip + $tax]
set roundedTotalCost [expr { round($totalCost)}]

puts "The total meal cost is $roundedTotalCost dollars."
