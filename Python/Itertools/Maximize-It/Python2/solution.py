# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import product

K, M = [int(x) for x in raw_input().split()]
arrayN = []
for _i_ in xrange(K):
    arrayN.append([int(x) for x in raw_input().split()][1:])

possible_combination = list(product(*arrayN))

def func(nums):
    return sum(x*x for x in nums) % M

print max(list(map(func, possible_combination)))
