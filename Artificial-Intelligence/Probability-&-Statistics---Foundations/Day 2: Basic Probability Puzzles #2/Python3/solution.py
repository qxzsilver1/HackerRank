# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import gcd
ways_to_6 = 5
diff_ways_to_6 = ways_to_6 - 1 # (3, 3) is the only case where sum is 6 and same values

num_outcomes = 6 ** 2

divisor = gcd(diff_ways_to_6, num_outcomes)
numerator = diff_ways_to_6 // divisor
denominator = num_outcomes // divisor

print(f"{numerator}/{denominator}")
