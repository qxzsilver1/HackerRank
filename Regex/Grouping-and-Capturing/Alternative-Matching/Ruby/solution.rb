Regex_Pattern = '^(Mr|Mrs|Ms|Dr|Er)\.[A-Za-z]+$'

print !!(gets =~ /#{Regex_Pattern}/)
