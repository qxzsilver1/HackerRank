# Enter your code here. Read input from STDIN. Print output to STDOUT
import re 

n = input() 

for _ in xrange(n):
    if re.match(r'[789]\d{9}$',raw_input()):   
        print 'YES'  
    else:  
        print 'NO'
