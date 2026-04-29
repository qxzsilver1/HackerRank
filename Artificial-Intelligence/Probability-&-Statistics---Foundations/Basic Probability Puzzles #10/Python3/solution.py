# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import gcd

bill_denom = 3
bill_numerator = 1

nina_denom = 5
nina_numerator = 1

total_outcomes = bill_denom * nina_denom
num_only_one_selected = (bill_denom - 1) * nina_numerator + bill_numerator * (nina_denom - 1)

divisor = gcd(total_outcomes, num_only_one_selected)
numerator = num_only_one_selected // divisor
denominator = total_outcomes // divisor

print(f"{numerator}/{denominator}")
