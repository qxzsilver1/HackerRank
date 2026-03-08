#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'pageCount' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER p
#

def pageCount(n, p):
    # Write your code here
    if p == 1 or p == n or (p == n-1 and n % 2 == 1):
        return 0
    
    if n % 2 == 0 and n-p == 1:
        return 1
    
    left = round((p - 1)/2) if (p-1) % 2 == 0 else math.ceil((p-1)/2)
    right = math.floor((n - p)/2) if (n-p) % 2 == 1 else round((n-p)/2)
    
    return min(left, right)

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    p = int(input().strip())

    result = pageCount(n, p)

    fptr.write(str(result) + '\n')

    fptr.close()
