# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

print(bool(re.match(r'^(?!(?:.*(.).\1.*){2,})(?!.*(.)(.)\2\3)[1-9]\d{5}$', input())))
