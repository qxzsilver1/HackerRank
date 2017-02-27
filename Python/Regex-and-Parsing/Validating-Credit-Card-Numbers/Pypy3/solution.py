# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

[print('Valid' if re.match(r'^[456]\d{3}(?:-?\d{4}){3}$', card) and not re.search(r'(\d)\1{3}', re.sub('-', '', card)) else 'Invalid') for card in [input() for _ in range(int(input()))]]
