# Enter your code here. Read input from STDIN. Print output to STDOUT
# Pypy3 environment doesn't have nump!!
#import numpy

a = list(map(float, input().split()))
a.reverse()

if (all(round(elem) == elem for elem in a)):
    a = [ '%.f.' % elem for elem in a]
if len(a) >= 3:
    print('[' + str(a[0]) + '  ' + str(a[1]) + '   ' + '   '.join(map(str, a[2::]))+ ']')
else:
    print('[' + str(a[0]) + '  ' + str(a[1]) + ']')
#print('[%s]' % '  '.join(map(str, a)))
