# Enter your code here. Read input from STDIN. Print output to STDOUT
from string import ascii_lowercase, ascii_uppercase, ascii_letters 

sortkey = ascii_letters + "1357902468"
print reduce(lambda x,y: x+y, sorted(raw_input(),key=sortkey.index))
