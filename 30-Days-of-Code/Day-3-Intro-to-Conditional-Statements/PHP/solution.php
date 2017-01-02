<?php

$handle = fopen ("php://stdin","r");
fscanf($handle,"%d",$N);

if ($N % 2 == 1) {
    echo "Weird";
} elseif ($N >= 6 and $N <= 20) {
    echo "Weird";
} else {
    echo "Not Weird";
}

?>
