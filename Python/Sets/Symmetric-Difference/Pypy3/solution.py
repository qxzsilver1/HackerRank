# Enter your code here. Read input from STDIN. Print output to STDOUT
M = int(input())
A = set(map(int, input().split()))
N = int(input())
B = set(map(int, input().split()))

l = sorted((A.difference(B)).union(B.difference(A)))

print("\n".join([str(element) for element in l]))
