# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import deque
d = deque()
for i in range(input()):
    eval('d.{0}({1})'.format(*raw_input().split()+['']))
print ' '.join(map(str,d)) 
