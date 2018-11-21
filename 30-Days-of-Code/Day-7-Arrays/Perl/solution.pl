#!/usr/bin/perl

use strict;
use warnings;



my $n = <>;
$n =~ s/\s+$//;

my $arr = <>;
$arr =~ s/\s+$//;
my @arr = split /\s+/, $arr;

print join(' ' ,reverse(@arr))
