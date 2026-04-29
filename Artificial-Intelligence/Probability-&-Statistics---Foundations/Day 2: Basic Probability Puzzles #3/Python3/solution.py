# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import gcd

X_r, X_b = 4, 3
Y_r, Y_b = 5, 4
Z_r, Z_b = 4, 4

X_num = X_r + X_b
Y_num = Y_r + Y_b
Z_num = Z_r + Z_b

possibilities = X_num * Y_num * Z_num

red_2_black_1_possibilites = (4 * 5 * 4) + (5 * 4 * 3) + (4 * 4 * 4)

# print(possibilities)
# print(red_2_black_1_possibilites)

divisor = gcd(red_2_black_1_possibilites, possibilities)
numerator = red_2_black_1_possibilites // divisor
denominator = possibilities // divisor

print(f"{numerator}/{denominator}")
