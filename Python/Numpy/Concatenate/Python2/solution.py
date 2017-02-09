import numpy

n,m,p = map(int, raw_input().split())
a = numpy.array([raw_input().split() for _ in xrange(n)], int)
b = numpy.array([raw_input().split() for _ in xrange(m)], int)

print (numpy.concatenate((a,b), axis=0))
