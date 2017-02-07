# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import permutations

inputs = raw_input().split()
print "\n".join("".join(i) for i in permutations(sorted(inputs[0]),int(inputs[1])))
