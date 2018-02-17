# The full code is given, you can just review and submit
proc sum {a b} {
    expr {$a+$b}
}

set a [gets stdin]
set b [gets stdin]
set res [sum $a $b]
puts $res
