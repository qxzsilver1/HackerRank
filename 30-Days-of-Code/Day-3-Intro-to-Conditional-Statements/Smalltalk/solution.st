inputString := stdin nextLine .
inputString := inputString asInteger .

(inputString \\ 2 = 1)
    ifTrue: [Transcript show: 'Weird'; cr]
    ifFalse: [(inputString >= 6) & (inputString <= 20) ifTrue: [Transcript show: 'Weird'; cr] ifFalse: [Transcript show: 'Not Weird'; cr]]
    
