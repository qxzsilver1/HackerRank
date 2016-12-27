use POSIX;

$mealCost;
$tipPercent;
$taxPercent;

$mealCost = <STDIN>;
$tipPercent = <STDIN>;
$taxPercent = <STDIN>;

$tip = $mealCost * ($tipPercent / 100);
$tax = $mealCost * ($taxPercent / 100);
$totalCost = $mealCost + $tip + $tax;

$roundedTotalCost = floor($totalCost + 0.5);

printf "The total meal cost is %d dollars.\n", $roundedTotalCost;

