# Enter your code here. Read input from STDIN. Print output to STDOUT
Regex_Pattern = r'^(_|\.)[0-9]+[a-zA-Z]*_?$'    # Do not delete 'r'.
import re

n = int(raw_input())
# text = "\n".join(input() for _ in range(n))

for _ in range(n):
    if re.match(Regex_Pattern, raw_input()) is None:
        print('INVALID')
    else:
        print('VALID')
