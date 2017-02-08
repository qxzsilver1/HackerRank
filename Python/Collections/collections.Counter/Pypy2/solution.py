# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import Counter

n = input()
shoes = Counter(map(int, raw_input().split()))
x = input()

income = 0

for i in xrange(x):
    size, price = map(int, raw_input().split())
    if shoes[size]: 
        income += price
        shoes[size] -= 1

print income
