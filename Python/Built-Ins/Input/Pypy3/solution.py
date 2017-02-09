# Enter your code here. Read input from STDIN. Print output to STDOUT
x, k = map(int, input().split())
f = lambda x:eval(input())
print(f(x) == k)
