# Enter your code here. Read input from STDIN. Print output to STDOUT
k,arr = input(), list(map(int, raw_input().split()))
s = set(arr)
print ((sum(s)*k)-(sum(arr)))//(k-1)
