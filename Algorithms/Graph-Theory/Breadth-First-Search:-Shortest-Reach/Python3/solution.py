#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'bfs' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER m
#  3. 2D_INTEGER_ARRAY edges
#  4. INTEGER s
#

def bfs(n, m, edges, s):
    # Write your code here
    graph = dict()
    
    for k in edges:
        graph.setdefault(k[0], set()).add(k[1])
        graph.setdefault(k[1], set()).add(k[0])
    
    visited, queue = set(), [s]
    distances = [-1] * n
    distances[s - 1] = 0
    
    while queue:
        vertex = queue.pop(0)
        if vertex not in visited:
            visited.add(vertex)
            for v in graph[vertex]:
                if distances[v-1] == -1:
                    distances[v-1] = distances[vertex-1] + 6
            queue.extend(graph[vertex] - visited)
    
    return distances[:s-1] + distances[s:]

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    q = int(input().strip())

    for q_itr in range(q):
        first_multiple_input = input().rstrip().split()

        n = int(first_multiple_input[0])

        m = int(first_multiple_input[1])

        edges = []

        for _ in range(m):
            edges.append(list(map(int, input().rstrip().split())))

        s = int(input().strip())

        result = bfs(n, m, edges, s)

        fptr.write(' '.join(map(str, result)))
        fptr.write('\n')

    fptr.close()
