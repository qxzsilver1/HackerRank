# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import groupby

print " ".join(str((len(list(k)),int(i))) for i,k in groupby(raw_input()))
