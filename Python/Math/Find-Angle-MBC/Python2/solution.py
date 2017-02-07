# Enter your code here. Read input from STDIN. Print output to STDOUT
import math

n = input()
m = input()

print str(int(round(math.degrees(math.atan2(n,m))))) + u'\N{DEGREE SIGN}'
