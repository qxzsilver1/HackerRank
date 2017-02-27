# Enter your code here. Read input from STDIN. Print output to STDOUT
import re
n, m = map(int, raw_input().split())

arr = ''.join([''.join(t) for t in zip(*[raw_input() for _ in xrange(n)])])

print re.sub(r'\b[^a-zA-Z0-9]+\b', r' ', arr)
