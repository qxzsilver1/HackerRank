# Enter your code here. Read input from STDIN. Print output to STDOUT
def matrix_printer(arr,n,m):
    for i in range(n):
        if i == 0:
            print('[[' + ' '.join(map(str, arr[0:m][0])) + ']')
        elif i == n-1:
            print(' [' + ' '.join(map(str, arr[0:m][n-1])) + ']]')
        else:
            print(' [' + ' '.join(map(str, arr[0:m][i])) + ']')
            
def matrix_flatten_printer(arr):
    print('[' + ' '.join(' '.join(map(str,sl)) for sl in arr) + ']')
    
n,m = map(int, input().split())
lst=[]
for _ in range(n):
    lst.append(list(map(int,input().split())))

a_transpose = [list(x) for x in zip(*lst)]

#matrix_printer(lst,n,m)
matrix_printer(a_transpose,m,n)
matrix_flatten_printer(lst)
