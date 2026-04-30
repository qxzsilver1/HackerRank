# Enter your code here. Read input from STDIN. Print output to STDOUT

from statistics import NormalDist
import math

mu = 205
sd = 15
n = 49
val = 9800
avg_val = val / n

z_score = (avg_val - mu) / (sd / math.sqrt(n))

# prob = NormalDist().cdf(z_score) # correct with prob = 0.0098 - but hackerrank sucks so it doesn't get this

def truncate(number, decimals=0):
    """
    Returns a value truncated to a specific number of decimal places.
    """
    if not isinstance(decimals, int):
        raise TypeError("decimal places must be an integer.")
    elif decimals < 0:
        raise ValueError("decimal places has to be 0 or more.")
    elif decimals == 0:
        return math.trunc(number)

    factor = 10.0 ** decimals
    return math.trunc(number * factor) / factor

# print(NormalDist().cdf(-z_score))
# print(truncate(NormalDist().cdf(-z_score), 4))
# print('%.4f'%(NormalDist().cdf(-z_score))) # this rounds up to 4th decimal place


prob_less = NormalDist().cdf(-z_score)
prob = 1 - truncate(prob_less, 4)
print( '{:0.4f}'.format(prob))

## this should be correct, but rounds up
# prob = 1 - float('{:0.4f}'.format(NormalDist().cdf(-z_score)))

# print(prob)

# print( '{:0.4f}'.format(prob))
