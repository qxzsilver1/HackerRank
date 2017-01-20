Regex_Pattern = '\b[aeiouAEIOU][A-Za-z]*\b'

print !!(gets =~ /#{Regex_Pattern}/)
