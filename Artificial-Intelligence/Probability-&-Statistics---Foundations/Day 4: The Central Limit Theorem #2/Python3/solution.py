# Enter your code here. Read input from STDIN. Print output to STDOUT
from statistics import NormalDist
import math

mu = 2.4
sd = 2

n = 100
val = 250

avg_val = val / n

z_score = (avg_val - mu) / (sd / math.sqrt(n))


prob = NormalDist().cdf(z_score)
print( '{:0.4f}'.format(prob))
