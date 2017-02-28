"Enter your code here. Read input from STDIN. Print output to STDOUT"
inputString := stdin nextLine .
n := inputString asInteger .
"n displayNl."
x := Array new: n .

inputString := stdin contents .
"inputString inspect."
inputString := inputString replacingAllRegex: '\s' with: ',' .
inputString := inputString subStrings: $,.
inputString fold: [:concatenation :string | concatenation, '.', string ] .
"inputString inspect."

n := (inputString at: 1) asInteger .
"n inspect.
(n printString) displayNl ."
"
10 to: 1 by: -1 do:[:aNumber | 
  aNumber display.
  Character space display.
]
"
1 to: n do:[:y | x at: y put: (inputString at: (y+1)) ].

"(n+1) to: 2 by: -1 do: [:i | ((inputString at: i) printString, ' ') displayNl ] !"
(n + 1) to: 2 by: -1 do:[:i |
    (inputString at: i) display.
    Character space display.
].
"x reverseDo: [:each | Transcript show: each; cr ]."
