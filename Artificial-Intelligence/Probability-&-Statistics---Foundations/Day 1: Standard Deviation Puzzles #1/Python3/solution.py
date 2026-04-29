# Enter your code here. Read input from STDIN. Print output to STDOUT

from statistics import stdev
from math import sqrt
# import numpy as np

# WRONG: assumption is not to use sample stdev but population stdev
# curr_list = [1, 2, 3]

# curr_sd = stdev(curr_list)

# squared_diff_sum = curr_sd ** 2 * (4-1)

# N_val_1 = (3 + sqrt(9 - (3 * (5 - squared_diff_sum)))) / (3/2)
# N_val_2 = (3 - sqrt(9 - (3 * (5 - squared_diff_sum)))) / (3/2)

# N_val = max(N_val_1, N_val_2)

# print(format(N_val, '.2f'))

# new_list = [1, 2, 3, N_val]

# print(N_val)
# print(N_val_1)
# print(N_val_2)
# print(new_list)
# print(stdev(new_list))

# CORRECT ANSWER: use population stdev
# curr_array = np.array([1, 2, 3])

# curr_sd = np.std(curr_array)
# squ_diff_sum = curr_sd ** 2 * 4

# N_val_1 = (3 + sqrt(9 - (3 * (5 - squared_diff_sum)))) / (3/2)
# N_val_2 = (3 - sqrt(9 - (3 * (5 - squared_diff_sum)))) / (3/2)

# N_val = max(N_val_1, N_val_2)

# print(format(N_val, '.2f'))

# new_list = [1, 2, 3, N_val]

# print(N_val)
# print(N_val_1)
# print(N_val_2)
# print(new_list)
# print(stdev(new_list))

curr_list = [1, 2, 3]

curr_sd = stdev(curr_list)

curr_pop_sd = sqrt((curr_sd ** 2 *(3-1))/3)

squared_diff_sum = curr_pop_sd ** 2 * 4


N_val_1 = (3 + sqrt(9 - (3 * (5 - squared_diff_sum)))) / (3/2)
N_val_2 = (3 - sqrt(9 - (3 * (5 - squared_diff_sum)))) / (3/2)

N_val = max(N_val_1, N_val_2)

print(format(N_val, '.2f'))

# new_list = [1, 2, 3, N_val]

# print(N_val)
# print(N_val_1)
# print(N_val_2)
# print(new_list)
# print(stdev(new_list))

