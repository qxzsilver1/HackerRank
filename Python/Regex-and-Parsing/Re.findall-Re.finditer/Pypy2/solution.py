# Enter your code here. Read input from STDIN. Print output to STDOUT
import re

vowels = 'aeiou'
consonants = '[^%s]' % vowels
a = re.findall('(?<=' + consonants +')([%s]{2,})' % vowels + consonants, raw_input(), re.I)
print '\n'.join(a or ['-1'])
