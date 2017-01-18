n := stdin nextLine asInteger .

1 to: n+1 do: [:x |
    input := stdin nextLine .
    
    (x ~= 1)
    ifTrue: [
    
    1 to: (input size) by: 2 do: [:y |
        (y \\ 2 = 1)
            ifTrue: [Transcript show: ((input at: y) asString) .].
    ].
    
    Transcript show: ' '.
    
    2 to: (input size) by: 2 do: [:y |        
        (y \\ 2 = 0)
            ifTrue: [Transcript show: ((input at: y) asString) .].
    ].
    
    Transcript cr.
    ].
] !
