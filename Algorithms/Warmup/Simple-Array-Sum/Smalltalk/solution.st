"Enter your code here. Read input from STDIN. Print output to STDOUT"

inputString := stdin nextLine .
n := inputString asInteger .
x := Array new: n .

inputString := stdin contents .
inputString := inputString replacingAllRegex: '\s' with: ',' .
inputString := inputString subStrings: $,.
inputString fold: [:concatenation :string | concatenation, '.', string ] .

n := (inputString at: 1) asInteger .
1 to: n do:[:y | x at: y put: (inputString at: (y+1))].

sum := 0. x do: [:a | sum := sum + (a asNumber)]. sum.  

sum displayNl.

