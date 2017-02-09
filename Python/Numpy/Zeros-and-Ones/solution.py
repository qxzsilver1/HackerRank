# Enter your code here. Read input from STDIN. Print output to STDOUT
def element_listmaker(i,n):
    listofsamethings = [i] * n
    return list(listofsamethings)

def character_adder(i,c):
    string = ''
    if i == 0:
        return string
    for _ in range(i):
        string += c
    return string

def matrix_printer(arr,n,m,j,ender=False):
    for i in range(n):
        if i == 0:
            print('[[' + ' '.join(map(str, arr[0][0:m])) + ']')
        elif i == n-1:
            if ender:
                print(character_adder(j,' ') + ' [' + ' '.join(map(str, arr[n-1][0:m])) + ']]', end='')
            else:
                print(character_adder(j,' ') + ' [' + ' '.join(map(str, arr[n-1][0:m])) + ']]')
        else:
            print(character_adder(j,' ') + ' [' + ' '.join(map(str, arr[i][0:m])) + ']')
            
def printing_multiplier(arr,n,m,*arg):
    if len(arg) == 0 or arg[0] is None:
        matrix_printer(arr,n,m,0)
    elif len(arg) == 1:
        for i in range(n):
            if i == 0:
                print(character_adder(len(arg),'['), end='')
                matrix_printer(arr,m,arg[0],len(arg))
                print()
            elif i != arg[0]-1:
                print(character_adder(len(arg),' '), end='')
                matrix_printer(arr,m,arg[0],len(arg))
                print()         
            if i == arg[0]-1:
                print(character_adder(len(arg),' '), end='')
                matrix_printer(arr,m,arg[0],len(arg),True)
                print(character_adder(len(arg),']'))
    elif len(arg) == 2:
        for i in range(n):
            if i == 0:
                print(character_adder(len(arg),'['), end='')
                for j in range(m):
                    if j == 0:
                        matrix_printer(arr,arg[0],arg[1],len(arg))
                        print()
                    elif j != m-1:
                        print(character_adder(len(arg),' '), end='')
                        matrix_printer(arr,arg[0],arg[1],len(arg))
                        print()
                    if j == m-1:
                        print(character_adder(len(arg),' '), end='')
                        matrix_printer(arr,arg[0],arg[1],len(arg),True)
                        print(character_adder(len(arg)-1,']'))
                print()
                print()
            elif i != n-1:
                print(character_adder(len(arg)-1,' '), end='')
                print(character_adder(len(arg)-1,'['), end='')
                for j in range(m):
                    if j == 0:
                        matrix_printer(arr,arg[0],arg[1],len(arg))
                        print()
                    elif j != m-1:
                        print(character_adder(len(arg),' '), end='')
                        matrix_printer(arr,arg[0],arg[1],len(arg))
                        print()
                    if j == m-1:
                        print(character_adder(len(arg),' '), end='')
                        matrix_printer(arr,arg[0],arg[1],len(arg),True)
                        print(character_adder(len(arg)-1,']')) 
                print()
                print()
            if i == n-1:
                print(character_adder(len(arg)-1,' '), end='')
                print(character_adder(len(arg)-1,'['), end='')
                for j in range(m):
                    if j == 0:
                        matrix_printer(arr,arg[0],arg[1],len(arg))
                        print()
                    elif j != m-1:
                        print(character_adder(len(arg),' '), end='')
                        matrix_printer(arr,arg[0],arg[1],len(arg))
                        print()
                    if j == m-1:
                        print(character_adder(len(arg),' '), end='')
                        matrix_printer(arr,m,arg[0],len(arg),True)
                print(character_adder(len(arg),']'))
                
#n, m, p = map(int, input().split())
arr = list(map(int, input().split()))
lst_zeros=[]
lst_ones=[]
for i in range(arr[0]):
    lst_zeros.append(element_listmaker(0,arr[2] if len(arr) > 2 else arr[1]))
    lst_ones.append(element_listmaker(1,arr[2] if len(arr) > 2 else arr[1]))

if len(arr) > 2:
    printing_multiplier(lst_zeros,arr[0],arr[1],*tuple(arr[2:]) if len(arr) > 2 else None)
    printing_multiplier(lst_ones,arr[0],arr[1], *tuple(arr[2:]) if len(arr) > 2 else None)
else:
    printing_multiplier(lst_zeros,arr[0],arr[1],arr[2:] if len(arr) > 2 else None)
    printing_multiplier(lst_ones,arr[0],arr[1], arr[2:] if len(arr) > 2 else None)
