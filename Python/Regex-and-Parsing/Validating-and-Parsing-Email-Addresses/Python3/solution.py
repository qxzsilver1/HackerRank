import re
import email.utils as eu

for _ in range(int(input())):
    for i,a in [eu.parseaddr(input())]:
        if re.match(r'^[a-z][\w.-]*@[a-z]+\.[a-z]{1,3}$',a):
            print(eu.formataddr((i,a)))
