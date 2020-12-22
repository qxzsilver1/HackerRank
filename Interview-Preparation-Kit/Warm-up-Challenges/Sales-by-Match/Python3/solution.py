#!/bin/python3

import math
import os
import random
import re
import sys

from itertools import zip_longest
from collections import Counter

# Complete the sockMerchant function below.
def sockMerchant(n, ar):
    # d = dict(itertools.zip_longest(*[iter(ar)], fillvalue=""))
    d = Counter(ar)
    return sum([x // 2 for x in d.values()])

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    ar = list(map(int, input().rstrip().split()))

    result = sockMerchant(n, ar)

    fptr.write(str(result) + '\n')

    fptr.close()
