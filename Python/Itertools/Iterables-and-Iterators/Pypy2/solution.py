# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import combinations

N = input()
L = raw_input().split()
K = input()

C = list(combinations(L, K))
F = filter(lambda c: 'a' in c, C)
print format(1.0 * len(list(F)) / len(C))

# not using itertools, just a probability exercise:
# M = ''.join(L).count('a')
# print 1.0 - reduce(lambda x,y: x*y,[(1.0-M*1.0/(N-i)) for i in xrange(K)])
