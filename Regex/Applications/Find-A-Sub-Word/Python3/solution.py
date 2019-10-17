# Enter your code here. Read input from STDIN. Print output to STDOUT

import re

n = int(input())
text = "\n".join(input() for _ in range(n))
t = int(input())
for _ in range(t):
    print(len(re.findall(r'\w(?=%s\w)' % input(), text)))
