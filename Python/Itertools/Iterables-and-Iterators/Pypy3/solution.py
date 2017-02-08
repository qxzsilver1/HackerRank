# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import combinations
# needed for other method:
# import functools

N = int(input())
L = input().split()
K = int(input())

C = list(combinations(L, K))
F = filter(lambda c: 'a' in c, C)
print(format(1.0 * len(list(F)) / len(C)))

# not using itertools, just a probability exercise:
# M = ''.join(L).count('a')
# print(1.0 - functools.reduce(lambda x,y: x*y,[(1.0-M*1.0/(N-i)) for i in range(K)]))
