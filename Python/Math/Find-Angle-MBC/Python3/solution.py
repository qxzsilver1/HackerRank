import math

n = float(input())
m = float(input())

print(str(int(round(math.degrees(math.atan2(n,m))))) + u'\N{DEGREE SIGN}')
