#!/bin/ruby

n = gets.strip.to_i

for i in 1..10
    printf "%d x %d = %d\n", n, i, n*i
end
