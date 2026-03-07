#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s):
    # Write your code here
    if len(s) != 10:
        return 'not a valid format'
    
    hh, mm, ss_m = s.split(':')
    meridian = ss_m[-2:]
    ss = ss_m[:2]
    
    if meridian == 'PM':
        hour_mil = (int(hh) + 12) % 24 if hh != '12' else 12 
        
        hh = '0' + str(hour_mil) if hour_mil < 10 else str(hour_mil)
    else:
        hour_mil = int(hh) % 12
        
        hh = '0' + str(hour_mil) if hour_mil < 10 else str(hour_mil)
    
    return hh + ':' + mm + ':' + ss
        

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = timeConversion(s)

    fptr.write(result + '\n')

    fptr.close()
