# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import gcd

r1, b1 = 4, 5
r2, b2 = 3, 7

bag_1_num = r1 + b1
bag_2_num = r2 + b2

total_outcomes = bag_1_num * bag_2_num * (bag_2_num - 1)

black_2_red_1 = (4 * 7 * 6) + 2 * (5 * 7 * 3)

divisor = gcd(total_outcomes, black_2_red_1)
numerator = black_2_red_1 // divisor
denominator = total_outcomes // divisor

print(f"{numerator}/{denominator}")
