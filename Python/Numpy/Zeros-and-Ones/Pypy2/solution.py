# Enter your code here. Read input from STDIN. Print output to STDOUT
import numpy
n = map(int, raw_input().split())
print numpy.zeros(n, int), "\n", numpy.ones(n, int)
