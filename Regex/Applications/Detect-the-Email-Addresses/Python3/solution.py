# Enter your code here. Read input from STDIN. Print output to STDOUT
## correct way
## Regex_Pattern = r"([a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+)"

Regex_Pattern = r'\w+[.\w]*@\w+[.\w]+\w+'

import re

n = int(input())
text = "\n".join(input() for _ in range(n))
print(';'.join(sorted(list(set(re.findall(Regex_Pattern, text))))))
