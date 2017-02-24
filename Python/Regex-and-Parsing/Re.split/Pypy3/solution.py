# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

[print(i) for i in re.split('[.,]', input()) if i]
