# Enter your code here. Read input from STDIN. Print output to STDOUT

def equalize_lengths_rjust_2dlist(l, length):
    lst = list(map(str, l))
    return [e.rjust(length) for e in lst]

def max_list_length(l2d):
    length = 0
    for l in l2d:
        lst = list(map(str, l))
        length = max(len(max(lst, key=len)), length)
    return length

def matrix_printer(arr,n,m):
    for i in range(n):
        if i == 0:
            if n == 1:
                ls = equalize_lengths_rjust_2dlist(arr[0],max_list_length(arr))
                print('[[' + ' '.join(map(str, ls[0:m])) + ']]')
            else:
                ls = equalize_lengths_rjust_2dlist(arr[0], max_list_length(arr))
                print('[[' + ' '.join(map(str, ls[0:m])) + ']')
        elif i == n-1:
            ls = equalize_lengths_rjust_2dlist(arr[n-1], max_list_length(arr))
            print(' [' + ' '.join(map(str, ls[0:m])) + ']]')
        else:
            ls = equalize_lengths_rjust_2dlist(arr[i], max_list_length(arr))
            print(' [' + ' '.join(map(str, ls[0:m])) + ']')

a = list(map(int, input().split()))
b = list(map(int, input().split()))

c = []
d = []

n = len(a)

for i in range(n):
    c.append([a[i] * l for l in b])

print(sum([ai*bi for ai,bi in zip(a,b)]))
matrix_printer(c,n,n)

