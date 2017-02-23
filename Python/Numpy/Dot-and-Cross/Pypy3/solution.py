# Enter your code here. Read input from STDIN. Print output to STDOUT

def equalize_lengths_rjust(l):
    lst = list(map(str, l))
    length = len(max(lst, key=len))
    return [e.rjust(length) for e in lst]

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

n = int(input())

list_a = []
list_b = []
list_c = []
list_d = []

for _ in range(n):
    list_a.append(list(map(int, input().split())))
    
for _ in range(n):
    list_b.append(list(map(int, input().split())))
        
for i in range(n):
    for j in range(n):
        list_c.append(sum([a*b for a,b in zip(tuple(list_a[i]),list(zip(*list_b))[j])]))
    list_d.append(list_c)
    list_c = []

matrix_printer(list_d, n, n)

