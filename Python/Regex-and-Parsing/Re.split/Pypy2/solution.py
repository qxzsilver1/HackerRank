# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

print '\n'.join([n for n in re.split(r'[,.]',raw_input()) if n])
