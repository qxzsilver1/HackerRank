# Enter your code here. Read input from STDIN. Print output to STDOUT
from math import gcd

company_1 = 12
company_2 = 15
company_3 = 10

total_outcomes = company_1 * company_2 * company_3

not_selected_all_companies = (company_1 - 1) * (company_2 - 1) * (company_3 - 1)
selected_outcomes = total_outcomes - not_selected_all_companies

divisor = gcd(total_outcomes, selected_outcomes)
numerator = selected_outcomes // divisor
denominator = total_outcomes // divisor

print(f"{numerator}/{denominator}")
