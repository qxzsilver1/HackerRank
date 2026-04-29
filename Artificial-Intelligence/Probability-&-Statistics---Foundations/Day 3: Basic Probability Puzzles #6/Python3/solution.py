# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import gcd

X_w, X_b = 5, 4
Y_w, Y_b = 7, 6

num_X = X_w + X_b
num_Y = Y_w + Y_b

total_outcomes = num_X * (num_Y + 1)

possibilities = (X_b * (Y_b + 1)) + (X_w * Y_b)

divisor = gcd(total_outcomes, possibilities)
numerator = possibilities // divisor
denominator = total_outcomes // divisor

print(f"{numerator}/{denominator}")
