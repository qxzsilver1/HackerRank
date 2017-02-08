# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import Counter, OrderedDict

class OrderedCounter(Counter, OrderedDict):
    pass
[print(*c) for c in OrderedCounter(sorted(input())).most_common(3)]
