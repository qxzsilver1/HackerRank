# Enter your code here. Read input from STDIN. Print output to STDOUT
import time
import re

def parseString(s):
    (x1,x2) = re.findall('(^.*) ([+-]\d{4})',s)[0]
    tz = x2[0] + str(int(x2[1:3])*3600 + int(x2[3:5])*60)
    ts = time.strptime(x1,"%a %d %b %Y %H:%M:%S")
    return time.mktime(ts) - eval(tz)

for i in xrange(input()):
    print int(abs(parseString(raw_input()) - parseString(raw_input())))
