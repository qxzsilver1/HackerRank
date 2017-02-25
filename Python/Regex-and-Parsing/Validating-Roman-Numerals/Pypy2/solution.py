# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

thousand = 'M{0,3}'
hundred = '(C[MD]|D?C{0,3})'
ten = '(X[CL]|L?X{0,3})'
digit = '(I[VX]|V?I{0,3})'
print bool(re.match(thousand + hundred+ten+digit +'$', raw_input()))
