# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import combinations

a,b = input().split()
print(*[''.join(j) for i in range(1,int(b)+1) for j in combinations(sorted(a),i)],sep='\n')
