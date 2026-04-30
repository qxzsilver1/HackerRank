# Enter your code here. Read input from STDIN. Print output to STDOUT

from math import exp, factorial

lambda_A = 0.88
lambda_B = 1.55

expectation_A_squared = lambda_A + lambda_A ** 2
expectation_B_squared = lambda_B + lambda_B ** 2

cost_A = 160 + 40 * expectation_A_squared
cost_B = 128 + 40 * expectation_B_squared

print('{:0.3f}'.format(cost_A))
print('{:0.3f}'.format(cost_B))
