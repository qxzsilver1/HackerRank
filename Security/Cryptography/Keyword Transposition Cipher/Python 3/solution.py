import itertools, string, sys
from collections import OrderedDict


def sliced(s, n):
    return [s[i : i + n] for i in range(0, len(s), n)]

def substitution(key, alphabet):
    keys = list(OrderedDict.fromkeys(key))

    sub_str = [list(keys)] + sliced([x for x in alphabet if x not in keys], len(keys))
    
    sub_str = sorted(''.join(x) for x in itertools.zip_longest(*sub_str, fillvalue = ''))
    
    return ''.join(sub_str)
                                                             

if __name__ == '__main__':
    alphabet = string.ascii_uppercase
    
    N = int(sys.stdin.readline())
    
    for _ in range(N):
        key = sys.stdin.readline().strip()
        cipher = sys.stdin.readline().strip()
        
        sub = substitution(key, alphabet)
        print(cipher.translate(str.maketrans(sub, alphabet)))
