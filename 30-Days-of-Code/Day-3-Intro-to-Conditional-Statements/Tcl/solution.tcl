gets stdin num

if [expr $num % 2 == 1] {
    puts "Weird"
} elseif { $num >= 6 && $num <= 20 } {
    puts "Weird"
} else {
    puts "Not Weird"
}

