#!/bin/python3

import math
import os
import random
import re
import sys

from collections import Counter

#
# Complete the 'solve' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def solve(a):
    # Write your code here
    count_dict = Counter(a)
    
    total_perms = 0
    
    for v in count_dict.values():
        total_perms += math.perm(v, 2)
    
    return total_perms

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input().strip())

    for t_itr in range(t):
        a_count = int(input().strip())

        a = list(map(int, input().rstrip().split()))

        result = solve(a)

        fptr.write(str(result) + '\n')

    fptr.close()
