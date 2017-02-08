# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import Counter, OrderedDict
class OrderedCounter(Counter, OrderedDict):
    pass
d = OrderedCounter(raw_input() for _ in xrange(input()))
print len(d)
print ' '.join(map(str, d.values()))
