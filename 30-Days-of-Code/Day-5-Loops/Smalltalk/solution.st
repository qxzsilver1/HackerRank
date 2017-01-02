inputString := stdin nextLine .
inputString := inputString asInteger .
1 to: 10 do: [:x | (inputString printString, ' x ', x printString, ' = ', (x * inputString) printString) displayNl ] !
