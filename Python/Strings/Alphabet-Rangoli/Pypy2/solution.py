import string
def print_rangoli(size):
    # your code goes here
    L = []
    for i in xrange(size):
        s = "-".join(string.ascii_lowercase[i:size])
        L.append((s[::-1]+s[1:]).center(4*size-3, "-"))
    print '\n'.join(L[:0:-1]+L)
    
if __name__ == '__main__':
    n = int(raw_input())
    print_rangoli(n)
