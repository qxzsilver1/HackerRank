let mealCost = float_of_string(input_line stdin);;
let tipPercent = int_of_string (input_line stdin);;
let taxPercent = int_of_string (input_line stdin);;

let tip = mealCost *. (float_of_int (tipPercent) /. 100.);;
let tax = mealCost *. (float_of_int (taxPercent) /. 100.);;
let totalCost = mealCost +. tip +. tax;;

let roundedTotalCost = int_of_float(floor (totalCost +. 0.5));;


Printf.printf "The total meal cost is %d dollars.\n" roundedTotalCost;;
