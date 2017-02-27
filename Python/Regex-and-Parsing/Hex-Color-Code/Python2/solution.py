# Enter your code here. Read input from STDIN. Print output to STDOUT
import re, sys

for i in sys.stdin:
    for j in re.findall(r'(?<!^)(#(?:[\da-f]{3}){1,2})', i, re.I):
        print j
