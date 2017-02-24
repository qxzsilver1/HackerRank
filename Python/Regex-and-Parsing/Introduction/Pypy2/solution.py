# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

for _ in range(input()):
	print bool(re.match(r'^[-+]?\d*\.\d+$', raw_input()))
