n := stdin nextLine asInteger .

1 to: n+1 do: [:x |
    input := stdin nextLine .
    
    (x ~= 1)
    ifTrue: [
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
    ]
] !
