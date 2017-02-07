# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import deque

n = int(input())
s = set(map(int, input().split()))
N = int(input())

for i in range(N):
    choice = input().split()
    if choice[0]=="pop":
        try:
            s = deque(s)
            s.popleft()            
            s = set(s)
        except KeyError:
            pass
    elif choice[0]=="remove":
        try:
            s.remove(int(choice[1]))
        except KeyError:
            pass
    elif choice[0]=="discard":
        s.discard(int(choice[1]))

print(sum(s))
