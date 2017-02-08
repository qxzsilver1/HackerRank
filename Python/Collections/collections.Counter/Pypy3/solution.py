# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import Counter

n = int(input())
shoes = Counter(map(int, input().split()))
x = int(input())

income = 0

for i in range(x):
    size, price = map(int, input().split())
    if shoes[size]: 
        income += price
        shoes[size] -= 1

print(income)
