#!/usr/bin/perl

$n = <STDIN>;
chomp $n;

for( $i = 1; $i <= 10; $i += 1){
    printf "%d x %d = %d\n", $n, $i, $n * $i;
}
