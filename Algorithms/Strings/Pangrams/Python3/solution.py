#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'pangrams' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def pangrams(s):
    # Write your code here
    pangram_ind_arr = [0] * 26
    chars_sum = 0
    
    for c in s:
        c_idx = ord(c.lower()) - ord('a')
        
        if c_idx >= 0 and c_idx < 26:
            if pangram_ind_arr[c_idx] == 0:
                pangram_ind_arr[c_idx] = 1
                chars_sum += 1
                
                if chars_sum == 26:
                    return 'pangram'
            else:
                continue
        else:
            continue
        
    return 'pangram' if chars_sum == 26 else 'not pangram'

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = pangrams(s)

    fptr.write(result + '\n')

    fptr.close()
