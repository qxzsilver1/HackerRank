inputString := stdin contents .

inputString := inputString replacingAllRegex: '\n' with: ',' .
inputString := inputString subStrings: $,.
inputString fold: [:concatenation :string | concatenation, '.', string ] .

n := (inputString at: 1) asInteger .

2 to: (n + 1) do: [:x | 
    input := inputString at: x .
    
    firstHalf := '' .
    secondHalf := '' .
    
    1 to: (input size) do: [:y |
        (y \\ 2 = 1)
            ifTrue: [firstHalf := firstHalf, ((input at: y) asString) .]
            ifFalse: [secondHalf := secondHalf, ((input at: y) asString) .] .
    ].

    Transcript show: firstHalf, ' ', secondHalf; cr .
    
    firstHalf := '' .
    secondHalf := '' .
] !
