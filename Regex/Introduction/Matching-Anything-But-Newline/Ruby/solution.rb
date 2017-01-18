regex_pattern = '^...\....\....\....$'

test_string = gets(nil)
print !/#{regex_pattern}/.match(test_string).nil? 
