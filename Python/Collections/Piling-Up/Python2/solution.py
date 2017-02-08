# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import deque

for _ in xrange(input()):  
    _, queue = raw_input(), deque(map(int, raw_input().split()))
    
    for cube in reversed(sorted(queue)):
        if queue[-1] == cube: queue.pop()
        elif queue[0] == cube: queue.popleft()
        else:
            print 'No'
            break
    else: print 'Yes'
