# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import sqrt

mu_P, sd_P = 100, 8
mu_S, sd_S = 103, 4

r_sqr = 0.4

r = sqrt(r_sqr)

beta = r * sd_P / sd_S

print('{:0.2f}'.format(beta))
