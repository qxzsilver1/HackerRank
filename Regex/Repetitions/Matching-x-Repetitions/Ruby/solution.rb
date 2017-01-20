Regex_Pattern = '^[A-Za-z02468]{40}[\s13579]{5}$'

print !!(gets =~ /#{Regex_Pattern}/)
