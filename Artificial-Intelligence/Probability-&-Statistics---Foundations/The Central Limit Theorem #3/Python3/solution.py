# Enter your code here. Read input from STDIN. Print output to STDOUT
from statistics import NormalDist
from math import sqrt

mu = 500
sd = 80
n = 100

upper, lower = 510, 490

z_score_upper = (upper - mu) / (sd / sqrt(n))
z_score_lower = (lower - mu) / (sd / sqrt(n))

prob = NormalDist().cdf(z_score_upper) - NormalDist().cdf(z_score_lower)
print( '{:0.4f}'.format(prob))
