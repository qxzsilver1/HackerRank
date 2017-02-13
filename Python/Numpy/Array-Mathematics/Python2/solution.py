import numpy as np

n, m = map(int, raw_input().split())
a, b = (np.array([raw_input().split() for _ in xrange(n)], dtype=int) for _ in xrange(2))

print a+b, '\n', a-b, '\n', a*b, '\n', a//b, '\n', a%b, '\n', a**b
