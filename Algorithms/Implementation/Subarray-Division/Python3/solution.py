#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'birthday' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY s
#  2. INTEGER d
#  3. INTEGER m
#

def birthday(s, d, m):
    # Write your code here
    l, r = 0, m
    
    curr_sum = sum(s[l:r])
    num_div = 1 if curr_sum == d else 0
    
    for r in range(m, len(s)):
        curr_sum = curr_sum - s[l] + s[r]
        
        if curr_sum == d:
            num_div += 1
        
        l += 1
    
    return num_div
        

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    s = list(map(int, input().rstrip().split()))

    first_multiple_input = input().rstrip().split()

    d = int(first_multiple_input[0])

    m = int(first_multiple_input[1])

    result = birthday(s, d, m)

    fptr.write(str(result) + '\n')

    fptr.close()
