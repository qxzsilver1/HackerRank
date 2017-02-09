# Enter your code here. Read input from STDIN. Print output to STDOUT
for i in xrange(input()):
    try:
        a,b = map(int, raw_input().split())
        print a/b
    except Exception as e:
        if isinstance(e, ZeroDivisionError):
            stringy = str(e).split()
            stringy.insert(2, "or")
            stringy.insert(3, "modulo")
            print 'Error Code:'," ".join(map(str, stringy))
        else:
            print 'Error Code:',e
        
