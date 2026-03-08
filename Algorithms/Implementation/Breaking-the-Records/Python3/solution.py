#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores):
    # Write your code here
    max_val, min_val = scores[0], scores[0]
    max_rec, min_rec = 0, 0
    
    for i in range(1, len(scores)):
        if min_val <= scores[i] <= max_val:
            continue
        
        if scores[i] < min_val:
            min_val = scores[i]
            min_rec += 1
        
        if scores[i] > max_val:
            max_val = scores[i]
            max_rec += 1
    
    return max_rec, min_rec
        

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    scores = list(map(int, input().rstrip().split()))

    result = breakingRecords(scores)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
