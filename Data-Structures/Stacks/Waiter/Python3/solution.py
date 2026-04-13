#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'waiter' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY number
#  2. INTEGER q
#


def waiter(number, q):
    # Write your code here
    answers = []
    A, B = [], []
    
    def prime(i, primes):
        for prime in primes:
            if not (i == prime or i % prime):
                return False
        
        primes.append(i)
        return i
    
    def generate_primes(n):
        primes = [2]
        i, ctr = 2, 0
        
        while True:
            if prime(i, primes):
                ctr += 1
                
                if ctr == n:
                    return primes
            i += 1
    
    primes = generate_primes(q)
    primes = primes[1:]
    
    for i in range(q):
        if i == 0:
            for n in number:
                if n % primes[i] == 0:
                    answers.append(n)
                else:
                    A.append(n)
            if q > 1:
                A = reversed(A)
        else:
            for n in A:
                if n % primes[i] == 0:
                    answers.append(n)
                else:
                    B.append(n)
                    continue
            
            A = [b for b in B]
            B = []
            
            A = reversed(A)
    
    A = list(reversed(list(A))) if q > 1 else A
    answers.extend(A)
            
    return answers
    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    n = int(first_multiple_input[0])

    q = int(first_multiple_input[1])

    number = list(map(int, input().rstrip().split()))

    result = waiter(number, q)

    fptr.write('\n'.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
