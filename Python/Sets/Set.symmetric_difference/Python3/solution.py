n = int(input())
s = set(map(int, input().split())) 

m = int(input())
t = set(map(int, input().split()))

print(len(s.symmetric_difference(t)))
