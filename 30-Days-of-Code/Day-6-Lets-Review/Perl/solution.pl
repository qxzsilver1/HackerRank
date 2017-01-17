$n = int(<>);

for ($i = 0; $i < $n; $i++) {
    $s = <>;
    chomp($s);
    
    $firstHalf = "";
    $secondHalf = "";
    
    for ($j = 0; $j < length($s); $j++) {
        if ($j % 2 == 0) {
            $firstHalf = $firstHalf . substr($s,$j,1);
        } else {
            $secondHalf = $secondHalf . substr($s,$j,1);
        }
    }
    
    printf("%s %s\n", $firstHalf, $secondHalf);
}
