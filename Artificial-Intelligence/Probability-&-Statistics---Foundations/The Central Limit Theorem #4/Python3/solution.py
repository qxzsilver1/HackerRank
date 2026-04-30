# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import sqrt

upper = 1.96
lower = -1.96


mu = 500
sd = 80
n = 100

upper_val = upper * sd / sqrt(n) + mu
lower_val = lower * sd / sqrt(n) + mu

print( '{:0.2f}'.format(lower_val))
print( '{:0.2f}'.format(upper_val))
