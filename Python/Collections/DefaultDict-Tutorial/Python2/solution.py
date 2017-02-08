# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import defaultdict
d, n = defaultdict(list), list(map(int, raw_input().split()))

for i in xrange(n[0]):
    d[raw_input()].append(i + 1)

for i in xrange(n[1]):
    print ' '.join(map(str, d[raw_input()])) or -1
