# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

print '\n'.join(re.sub(R'(?<= )(&&|\|\|)(?= )', lambda x: 'and' if x.group()=='&&' else 'or', raw_input()) for _ in xrange(int(raw_input().strip())))
