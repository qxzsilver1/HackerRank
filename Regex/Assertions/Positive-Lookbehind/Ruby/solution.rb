Regex_Pattern = '(?<=[13579])[0-9]'

Test_String = gets
regex = Test_String.scan /#{Regex_Pattern}/
print "Number of matches : ",regex.length
