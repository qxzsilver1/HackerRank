#!/usr/bin/perl

$N = <STDIN>;
chomp $N;

if ($N % 2 == 1) {
    print "Weird\n";
} elsif ($N >= 6 and $N <= 20) { #or can use &&
    print "Weird\n";
} else {
    print "Not Weird\n";
}
