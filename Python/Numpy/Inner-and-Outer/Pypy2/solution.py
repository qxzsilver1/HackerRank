# Enter your code here. Read input from STDIN. Print output to STDOUT
import numpy

a = list(map(int, raw_input().split()))
b = list(map(int, raw_input().split()))
a = numpy.array(a)
b = numpy.array(b)


print sum([ai*bi for ai,bi in zip(a,b)]) #inner not yet implemented for some reason
print numpy.outer(a,b)
