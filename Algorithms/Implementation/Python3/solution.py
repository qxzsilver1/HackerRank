#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'migratoryBirds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def migratoryBirds(arr):
    # Write your code here
    bird_dict = {}
    max_num = 0
    max_idx = 0
    
    for n in arr:
        
        if n not in bird_dict:
            bird_dict[n] = 1
        else:
            bird_dict[n] += 1
        
        if bird_dict[n] > max_num:
            max_num = bird_dict[n]
            max_idx = n
        elif bird_dict[n] == max_num:
            max_idx = min(max_idx, n)
        else:
            continue
    
    return max_idx
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    arr_count = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    result = migratoryBirds(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
