# Enter your code here. Read input from STDIN. Print output to STDOUT
a = list(map(int, input().split()))

for i in range(len(a)//3):
    if i == 0:
        print('[[' + ' '.join(map(str, a[0:3])) + ']')
    elif i == 1:
        print(' [' + ' '.join(map(str, a[3:6])) + ']')
    elif i == 2:
        print(' [' + ' '.join(map(str, a[6:9])) + ']]')
