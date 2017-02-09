# Enter your code here. Read input from STDIN. Print output to STDOUT
import numpy

n,m = map(int, raw_input().split())
a = numpy.array([raw_input().split() for _ in xrange(n)], int)

print (a.transpose())
print (a.flatten())
