# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

n = int(raw_input())
text = "\n".join(raw_input() for _ in range(n))
t = int(raw_input())
for _ in range(t):
    print(len(re.findall(r'\w(?=%s\w)' % raw_input(), text)))

