# Enter your code here. Read input from STDIN. Print output to STDOUT
M = int(raw_input())
A = set(map(int, raw_input().split()))
N = int(raw_input())
B = set(map(int, raw_input().split()))

l = sorted((A.difference(B)).union(B.difference(A)))

print "\n".join([str(element) for element in l])
