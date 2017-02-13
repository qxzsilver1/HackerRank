# Enter your code here. Read input from STDIN. Print output to STDOUT
from operator import add

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
    return [e.rjust(length) for e in lst]

def matrix_printer(arr,n,m,option):
    for i in range(n):
        if i == 0:
            if n == 1:
                if option == "multiply":
                    print('[[ ' + ' '.join(map(str, arr[0][0:m])) + ']]')
                elif option == "power" or option == "add":
                    ls = equalize_lengths_rjust(arr[0])
                    print('[[' + ' '.join(map(str, ls[0:m])) + ']]')
                else:
                    print('[[' + ' '.join(map(str, arr[0][0:m])) + ']]')
            else:
                if option == "multiply":
                    print('[[ ' + ' '.join(map(str, arr[0][0:m])) + ']')
                elif option == "power" or option == "add":
                    ls = equalize_lengths_rjust(arr[0])
                    print('[[' + ' '.join(map(str, ls[0:m])) + ']')
                else:
                    print('[[' + ' '.join(map(str, arr[0][0:m])) + ']')
        elif i == n-1:
            if option == "multiply":
                print(' [ ' + ' '.join(map(str, arr[n-1][0:m])) + ']]')
            elif option == "power" or option == "add":
                ls = equalize_lengths_rjust(arr[n-1])
                print(' [' + ' '.join(map(str, ls[0:m])) + ']]')
            else:
                print(' [' + ' '.join(map(str, arr[n-1][0:m])) + ']]')
        else:
            if option == "multiply":
                print(' [ ' + ' '.join(map(str, arr[i][0:m])) + ']')
            elif option == "power" or option == "add":
                ls = equalize_lengths_rjust(arr[i])
                print(' [' + ' '.join(map(str, ls[0:m])) + ']')
            else:
                print(' [' + ' '.join(map(str, arr[i][0:m])) + ']')

def _plus_(a, b):
    lst = []
    for i in range(n):
        inner_lst = []
        for j in range (m):
            inner_lst.append(a[i][j] + b[i][j])
            
        lst.append(inner_lst)
    
    return lst
            
def _minus_(a, b):
    lst = []
    for i in range(n):
        inner_lst = []
        for j in range (m):
            inner_lst.append(a[i][j] - b[i][j])
            
        lst.append(inner_lst)
    
    return lst

def _multiply_(a, b):
    lst = []
    for i in range(n):
        inner_lst = []
        for j in range (m):
            inner_lst.append(a[i][j] * b[i][j])
            
        lst.append(inner_lst)
    
    return lst

def _divide_(a, b):
    lst = []
    for i in range(n):
        inner_lst = []
        for j in range (m):
            inner_lst.append(a[i][j] // b[i][j])
            
        lst.append(inner_lst)
    
    return lst

def _mod_(a, b):
    lst = []
    for i in range(n):
        inner_lst = []
        for j in range (m):
            inner_lst.append(a[i][j] % b[i][j])
            
        lst.append(inner_lst)
    
    return lst

def _power_(a, b):
    lst = []
    for i in range(n):
        inner_lst = []
        for j in range (m):
            inner_lst.append(a[i][j] ** b[i][j])
            
        lst.append(inner_lst)
    
    return lst
    

n, m = map(int, input().split())

a = []
b = []
for _ in range(n):
    a.append(list(map(int,input().split())))
    
for _ in range(n):
    b.append(list(map(int,input().split())))
    
#print(a)
#print(b)
    
a_plus_b = _plus_(a, b)
a_minus_b = _minus_(a,b)
a_multiply_b = _multiply_(a,b)
a_divide_b = _divide_(a,b)
a_mod_b = _mod_(a,b)
a_power_b = _power_(a,b)
matrix_printer(a_plus_b, n, m, "add")
matrix_printer(a_minus_b, n, m, "subtract")
matrix_printer(a_multiply_b, n, m, "multiply")
matrix_printer(a_divide_b, n, m, "divide")
matrix_printer(a_mod_b, n, m, "mod")
matrix_printer(a_power_b, n, m, "power")

#print(a_plus_b, a_minus_b, a_multiply_b, a_divide_b, a_mod_b, a_power_b, sep='\n')

