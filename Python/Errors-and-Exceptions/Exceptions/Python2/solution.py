# Enter your code here. Read input from STDIN. Print output to STDOUT
for i in xrange(input()):
    try:
        a,b = map(int, raw_input().split())
        print a/b
    except Exception as e:
        print 'Error Code:',e
