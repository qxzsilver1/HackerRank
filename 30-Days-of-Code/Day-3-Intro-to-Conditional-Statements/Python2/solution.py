#!/bin/python

import sys


N = int(raw_input().strip())

if N % 2 == 1:
    print "Weird"
elif N >= 6 and N <= 20:
    print "Weird"
else:
    print "Not Weird"
    
