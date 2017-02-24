# Enter your code here. Read input from STDIN. Print output to STDOUT
import numpy

a = list(map(float, raw_input().split()))
x = float(raw_input())

print numpy.polyval(a,x)
