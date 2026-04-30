# Enter your code here. Read input from STDIN. Print output to STDOUT

from math import exp, factorial

lambda_poiss = 3

prob_no_calls = exp(- lambda_poiss)

prob_calls = 1 - prob_no_calls

prob_1_call = exp(- lambda_poiss) * lambda_poiss

prob_2_calls = 1 - (prob_no_calls + prob_1_call)

prob_2_calls_2_mins = prob_calls ** 2 + 2 * prob_2_calls * prob_no_calls

print('{:0.3f}'.format(prob_no_calls))
print('{:0.3f}'.format(prob_2_calls_2_mins))
