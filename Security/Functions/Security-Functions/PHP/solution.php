<?php

$handle = fopen ("php://stdin", "r");
function calculate($x) {
    // Complete this function
    return $x % 11;
}

fscanf($handle, "%i",$x);
$result = calculate($x);
echo $result . "\n";

?>
