# Enter your code here. Read input from STDIN. Print output to STDOUT
import re
import email.utils as eu

for _ in xrange(input()):
    for i,a in [eu.parseaddr(raw_input())]:
        if re.match(r'^[a-z][\w.-]*@[a-z]+\.[a-z]{1,3}$',a):
            print(eu.formataddr((i,a)))
