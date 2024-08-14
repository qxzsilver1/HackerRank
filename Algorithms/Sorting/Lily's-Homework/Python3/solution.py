#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'lilysHomework' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def swap(arr, i, j):
    arr[i], arr[j] = arr[j], arr[i]

def swap_counter(arr, incr=True):
    annotated = [*enumerate(arr)]
    
    if incr:
        annotated.sort(key = lambda it: it[1])
    else:
        annotated.sort(key = lambda it: -it[1])
    
    swap_count = 0
    
    i = 0
    
    while i < len(arr):
        if annotated[i][0] == i:
            i += 1
            continue
        
        swap(annotated, i, annotated[i][0])
        swap_count += 1
    
    return swap_count

def lilysHomework(arr):
    # Write your code here
    
    return min(swap_counter(arr), swap_counter(arr, False))
            
    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    result = lilysHomework(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
