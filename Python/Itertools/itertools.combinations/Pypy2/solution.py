# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import combinations

inputs = raw_input().split()
print "\n".join("".join(p) for i in range(1, int(inputs[1])+1) for p in combinations(sorted(inputs[0]),i))
