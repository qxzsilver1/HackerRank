# Enter your code here. Read input from STDIN. Print output to STDOUT
import os
import statistics
from math import sqrt




if __name__ == '__main__':

    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))
    
    print('{:0.1f}'.format(statistics.mean(arr)))
    
    print('{:0.1f}'.format(statistics.median(arr)))
    
    # print(statistics.mode(arr)) # unexpected behavior
    print(statistics.mode(sorted(arr)))
    
    # print(statistics.stdev(arr)) # this is sample stdev
    print('{:0.1f}'.format(sqrt(statistics.variance(arr) * (n-1) / n)))
    
    lower = statistics.mean(arr) - 1.96 * sqrt(statistics.variance(arr) * (n-1) / n) / sqrt(n)
    upper = statistics.mean(arr) + 1.96 * sqrt(statistics.variance(arr) * (n-1) / n) / sqrt(n)
    
    print('{:0.1f} {:0.1f}'.format(lower, upper))
    
