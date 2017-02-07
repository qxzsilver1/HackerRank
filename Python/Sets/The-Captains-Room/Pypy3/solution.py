# Enter your code here. Read input from STDIN. Print output to STDOUT\
k,arr = int(input()), list(map(int, input().split()))
s = set(arr)
print(((sum(s)*k)-(sum(arr)))//(k-1))
