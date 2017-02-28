# Block Swap Algo

def swap(arr, firstIndex, secondIndex, d):
    for i in range(d):
        temp = arr[firstIndex+i]
        arr[firstIndex+i] = arr[secondIndex+i]
        arr[secondIndex+i] = temp
        
def leftRotate(arr, d, n):
    if d == 0 or d ==n: return
    
    i = d
    j = n - d
    while (i != j):
        if(i < j):
            swap(arr, d-i, d+j-i, i)
            j -= i
        else:
            swap(arr, d-i, d, j)
            i -= j

    swap(arr, d-i, d, i);

n, d = map(int, input().split())

a = list(map(int, input().split()))
leftRotate(a, d, n)
print(' '.join(map(str,a)))
