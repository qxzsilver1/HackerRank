import numpy

a = list(map(float, raw_input().split()))
x = float(raw_input())

print numpy.polyval(a,x)
