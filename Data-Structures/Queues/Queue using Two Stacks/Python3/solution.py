# Enter your code here. Read input from STDIN. Print output to STDOUT

#!/bin/python3

import math
import os
import random
import re
import sys

class QueueUsingStacks:

    def __init__(self):
        self.stack1 = []
        self.stack2 = []

    def push(self, x: int) -> None:
        self.stack1.append(x)

    def pop(self) -> int:
        if not self.stack2:
            while self.stack1:
                self.stack2.append(self.stack1.pop())
        return self.stack2.pop()
        
    def peek(self) -> int:
        if not self.stack2:
            while self.stack1:
                self.stack2.append(self.stack1.pop())
        return self.stack2[-1]
        
    def empty(self) -> bool:
        return max(len(self.stack1), len(self.stack2)) == 0

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')
    
    t = int(input().strip())
    
    qs = QueueUsingStacks()

    for t_itr in range(t):
        vals = list(map(int, input().split()))
        
        if len(vals) == 1:
            q = vals[0]
            
            if q == 2:
                qs.pop()
            else:
                result = qs.peek()
                fptr.write(str(result) + '\n')
        else:
            q, n = vals[0], vals[1]
            qs.push(n)

    fptr.close()
