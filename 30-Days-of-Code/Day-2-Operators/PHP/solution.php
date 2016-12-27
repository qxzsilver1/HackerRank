<?php
$handle = fopen ("php://stdin","r");

$mealCost;
$tipPercent;
$taxPercent;

$mealCost = fgets($handle);
$tipPercent = fgets($handle);
$taxPercent = fgets($handle);

$tip = $mealCost * ($tipPercent / 100);
$tax = $mealCost * ($taxPercent / 100);
$totalCost = $mealCost + $tip + $tax;

$roundedTotalCost = round($totalCost);


printf ("The total meal cost is %d dollars.\n", $roundedTotalCost);

fclose($handle);
?>
