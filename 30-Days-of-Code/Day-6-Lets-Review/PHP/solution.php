<?php
$_fp = fopen("php://stdin", "r");

$n = fgets($_fp);

for ($i = 0; $i < $n; $i++) {
    $s = "";
    fscanf($_fp, "%s", $s);
    
    $firstHalf = "";
    $secondHalf = "";
    
    for ($j = 0; $j < strlen($s); $j++) {
        if ($j % 2 == 0) {
            $firstHalf = $firstHalf . substr($s,$j,1);
        } else {
            $secondHalf = $secondHalf . substr($s,$j,1);
        }
    }
    
    printf("%s %s\n", $firstHalf, $secondHalf);
}

fclose($_fp);
?>
