# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import exp, factorial

lambd = 2.5
X = 5

prob = exp(- lambd) * lambd ** X / (factorial(X))

print('{:0.3f}'.format(prob))
