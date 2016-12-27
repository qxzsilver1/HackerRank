For some reason, using just a simple ACCEPT/DISPLAY doesn't allow the 2 full digits of input to be stored into variable_name.

My work-around was to use an ORGANIZATION LINE SEQUENTIAL to READ input (a much more predictable way to get input), and then
store this input into a 2-digit format.

However, although it seems like the test gives the correct result, for some reason it says "Wrong Answer". Haven't figured out why.
