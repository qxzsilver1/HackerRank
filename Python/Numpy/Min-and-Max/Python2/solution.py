import numpy

n, m = map(int, raw_input().split())
a = numpy.array([raw_input().split() for _ in xrange(n)], int)

print (numpy.max(numpy.min(a, axis = 1), axis = 0))
