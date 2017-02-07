n = input()
s = set(map(int, raw_input().split())) 

for i in xrange((input())):
    eval('s.{0}({1})'.format(*raw_input().split()+['']))

print(sum(s))
