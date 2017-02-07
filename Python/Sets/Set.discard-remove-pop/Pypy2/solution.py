from collections import deque

n = int(raw_input())
s = set(map(int,raw_input().split()))
N = int(raw_input())

for i in xrange(N):
    choice = raw_input().split()
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

print sum(s)
