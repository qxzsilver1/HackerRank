# Enter your code here. Read input from STDIN. Print output to STDOUT

from math import exp, factorial

mean_lambda = 1.2

prob_2 = exp(- mean_lambda) * mean_lambda ** 2 / factorial(2)

print('{:0.3f}'.format(prob_2))

prob_0 = exp(- mean_lambda)

prob_1 = exp(- mean_lambda) * mean_lambda

prob_less_than_3 = prob_0 + prob_1 + prob_2

print('{:0.3f}'.format(prob_less_than_3))

mean_lambda_10 = 10 * mean_lambda

prob_first_10_pgs_5 = exp(- mean_lambda_10) * mean_lambda_10 ** 5 / factorial(5)

print('{:0.3f}'.format(prob_first_10_pgs_5))

mean_lambda_40 = 40 * mean_lambda

prob_0_40 = exp(- mean_lambda_40)
prob_1_40 = exp(- mean_lambda_40) * mean_lambda_40
prob_2_40 = exp(- mean_lambda_40) * mean_lambda_40 ** 2 / factorial(2)

prob_all_40_pgs_at_least_3 = 1 - (prob_0_40 + prob_1_40 + prob_2_40)

print('{:0.3f}'.format(prob_all_40_pgs_at_least_3))

