# Enter your code here. Read input from STDIN. Print output to STDOUT
import numpy

n = input()

a = []

for _ in xrange(n):
    a.append(list(map(float, raw_input().split())))
    
print numpy.linalg.det(a)
