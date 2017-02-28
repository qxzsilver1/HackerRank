# Enter your code here. Read input from STDIN. Print output to STDOUT

# Reversal Algo
def reverseArray(arr, start, end):
    while (start < end):
        temp = arr[start]
        arr[start] = arr[end]
        arr[end] = temp
        start += 1
        end -= 1
        
def leftRotate(arr, d):
    n = len(arr)
    reverseArray(arr, 0, d-1)
    reverseArray(arr, d, n-1)
    reverseArray(arr, 0, n-1)
    
n, d = map(int, raw_input().split())

a = list(map(int, raw_input().split()))
leftRotate(a, d)
print ' '.join(map(str,a))
