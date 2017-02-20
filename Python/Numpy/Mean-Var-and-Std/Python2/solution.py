import numpy

n, m = map(int, raw_input().split())
a = numpy.array([raw_input().split() for _ in xrange(n)], int)

print numpy.mean(a, axis=1)
print numpy.var(a, axis=0)
print numpy.std(a, None)
