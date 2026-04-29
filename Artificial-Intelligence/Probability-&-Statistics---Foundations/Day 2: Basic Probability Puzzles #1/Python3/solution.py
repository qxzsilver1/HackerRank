# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import gcd

possibilities = 0
for i in range(1, 7):
    possibilities += i

possibilities += 5 # for ways to get 8
possibilities += 4 # for ways to get 9

num_outcomes = 36

divisor = gcd(possibilities, num_outcomes)
numerator = possibilities // divisor
denominator = num_outcomes // divisor

print(f"{numerator}/{denominator}")
