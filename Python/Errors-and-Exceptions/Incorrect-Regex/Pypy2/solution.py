# Enter your code here. Read input from STDIN. Print output to STDOUT
import re
for _ in xrange(input()):  
    try:
        print bool(re.compile(raw_input()))
    except:
        print 'False'
