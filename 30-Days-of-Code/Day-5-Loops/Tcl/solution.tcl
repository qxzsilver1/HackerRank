gets stdin n

for {set i 1} {$i <= 10} {incr i} {
    puts "$n x $i = [expr $n * $i]"
}
