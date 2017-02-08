# Enter your code here. Read input from STDIN. Print output to STDOUT
from dateutil import parser

for _ in xrange(input()):
    d1 = parser.parse(raw_input().strip())
    d2 = parser.parse(raw_input().strip())
    print abs(int((d2-d1).total_seconds()))
