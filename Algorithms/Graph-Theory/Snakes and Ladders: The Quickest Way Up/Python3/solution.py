#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'quickestWayUp' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. 2D_INTEGER_ARRAY ladders
#  2. 2D_INTEGER_ARRAY snakes
#

from collections import deque

def quickestWayUp(ladders, snakes):
    # Write your code here
    move_dict = { k: v for k, v in ladders }
    move_dict.update({ k: v for k, v in snakes })
    print(move_dict)
    
    q = deque()
    q.append((1, 0))
    
    visited = set()
    
    while q:
        square, moves = q.popleft()
        
        for i in range(1, 7):
            next_square = square + i
            
            if next_square in move_dict:
                next_square = move_dict[next_square]
            
            if next_square == 100:
                return moves + 1
            
            if next_square not in visited:
                visited.add(next_square)
                q.append((next_square, moves + 1))
        
    return -1
        

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input().strip())

    for t_itr in range(t):
        n = int(input().strip())

        ladders = []

        for _ in range(n):
            ladders.append(list(map(int, input().rstrip().split())))

        m = int(input().strip())

        snakes = []

        for _ in range(m):
            snakes.append(list(map(int, input().rstrip().split())))

        result = quickestWayUp(ladders, snakes)

        fptr.write(str(result) + '\n')

    fptr.close()
