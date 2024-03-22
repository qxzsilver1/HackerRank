#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'isBalanced' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def isBalanced(s):
    # Write your code here
    stack = []
    close_open_map = { ')': '(', ']': '[', '}': '{' }
    
    for c in s:
        if c in close_open_map:
            if stack and stack[-1] == close_open_map[c]:
                stack.pop()
            else:
                return 'NO'
        else:
            stack.append(c)
    
    return 'YES' if not stack else 'NO'

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input().strip())

    for t_itr in range(t):
        s = input()

        result = isBalanced(s)

        fptr.write(result + '\n')

    fptr.close()
