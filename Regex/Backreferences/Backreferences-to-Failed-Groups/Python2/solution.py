Regex_Pattern = r"^\d{2}(-?)(\d{2}(\1)){2}\d{2}$"	# Do not delete 'r'.

import re

print(str(bool(re.search(Regex_Pattern, raw_input()))).lower())
