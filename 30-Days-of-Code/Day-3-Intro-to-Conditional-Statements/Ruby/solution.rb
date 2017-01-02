#!/bin/ruby

N = gets.strip.to_i

if N % 2 == 1
    print "Weird"
elsif N >= 6 and N <= 20
    print "Weird"
else
    print "Not Weird"
end
