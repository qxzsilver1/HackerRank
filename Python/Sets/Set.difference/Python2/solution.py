# Enter your code here. Read input from STDIN. Print output to STDOUT
n = input()
s = set(map(int, raw_input().split())) 

m = input()
t = set(map(int, raw_input().split()))

print len(s.difference(t))
