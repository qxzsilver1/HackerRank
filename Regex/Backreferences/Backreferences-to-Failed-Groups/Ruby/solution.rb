Regex_Pattern = '^\d{2}(-?)(\d{2}(\1)){2}\d{2}$'

print !!(gets =~ /#{Regex_Pattern}/)
