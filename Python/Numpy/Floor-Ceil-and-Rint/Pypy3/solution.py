# Enter your code here. Read input from STDIN. Print output to STDOUT
import math

def character_adder(i,c):
    string = ''
    if i == 0:
        return string
    for _ in range(i):
        string += c
    return string

def equalize_lengths_rjust(l):
    lst = list(map(str, l))
    length = len(max(lst, key=len))
    return [e.rjust(length+1) for e in lst]

def matrix_printer(arr,option):
    lst = list(map(str, arr))
    length = len(max(lst, key=len))
    if option == "floor" or length == 1:
        print('[ ' + '  '.join('%.f.' % x for x in arr[0:len(arr)]) + ']')
    else:
        ls = equalize_lengths_rjust(arr)
        print('[' + ' '.join(' %2s.' % x for x in arr[0:len(ls)]) + ']')
        
def _floor_(a):
    lst = []
    for i in range(len(a)):
        lst.append(math.floor(a[i]))
    
    return lst
            
def _ceil_(a):
    lst = []
    for i in range(len(a)):
        lst.append(math.ceil(a[i]))
    
    return lst

def _rint_(a):
    lst = []
    for i in range(len(a)):
        lst.append(round(a[i]))
    
    return lst

arr = list(map(float, input().split()))
    
floor_a = _floor_(arr)
ceil_a = _ceil_(arr)
rint_a = _rint_(arr)

matrix_printer(floor_a, "floor")
matrix_printer(ceil_a, "ceil")
matrix_printer(rint_a, "rint")
