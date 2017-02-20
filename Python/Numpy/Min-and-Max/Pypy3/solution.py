# Enter your code here. Read input from STDIN. Print output to STDOUT
import functools

n, m = map(int, input().split())

a = []

for _ in range(n):
    a.append(min(list(map(int,input().split()))))
    
print(max(a))
