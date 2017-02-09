# Enter your code here. Read input from STDIN. Print output to STDOUT
def matrix_printer(arr,n,m):
    for i in range(n):
        if i == 0:
            print('[[ ' + '  '.join('%.f.' % x for x in arr[0][0:m]) + ']')
        elif i == n-1:
            print(' [ ' + '  '.join('%.f.' % x for x in arr[n-1][0:m]) + ']]')
        else:
            print(' [ ' + '  '.join('%.f.' % x for x in arr[i][0:m]) + ']')

n, m = map(int, input().split())
arr = []

for i in range(n):
    new = []
    for j in range(m):
        if i == j:
            new.append(1.0)
        else:
            new.append(0.0)
    arr.append(new)

matrix_printer(arr, n, m)
            
