# Enter your code here. Read input from STDIN. Print output to STDOUT
import numpy

n, m = map(int, raw_input().split())

print numpy.eye(n, m)
