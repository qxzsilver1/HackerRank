# Enter your code here. Read input from STDIN. Print output to STDOUT

a = list(map(float, input().split()))
x = float(input())

print(sum([y*x**(len(a)-1-i) for i,y in enumerate(a)]))
