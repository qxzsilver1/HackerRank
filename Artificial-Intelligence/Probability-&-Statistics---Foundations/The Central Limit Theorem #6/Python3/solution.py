# Enter your code here. Read input from STDIN. Print output to STDOUT
import math
from statistics import NormalDist

mu = 50000
sigma = 10000

weeks = 11
start = 74000


sum_mu = weeks * mu
sum_sigma = weeks ** 0.5 * sigma

z = 2.575
lower_bound = z * sum_sigma + sum_mu
weekly = ((lower_bound + 20000) - start) / weeks

print('{:0.1f}'.format(weekly))
