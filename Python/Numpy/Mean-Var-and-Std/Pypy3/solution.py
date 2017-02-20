# Enter your code here. Read input from STDIN. Print output to STDOUT
import operator, math

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
    if option == "var" or length == 1:
        print('[ ' + '  '.join('%.f.' % x if round(x) == x else '  %.2f' % x for x in arr[0:len(arr)]) + ']')
    elif option == "mean":
        truth_vector = list(map(lambda x: round(x) == x, arr))
        if all(truth_vector):   
            print('[ ' + '  '.join('%.f.' % x if round(x) == x else '%.1f' % x for x in arr[0:len(arr)]) + ']')
        else:
            print('[ ' + '  '.join('%.f. ' % x if round(x) == x else '%.1f' % x for x in arr[0:len(arr)]) + ']')
    else:
        ls = equalize_lengths_rjust(arr)
        print('[' + ' '.join(' %2s.' % x for x in arr[0:len(ls)]) + ']')

def mean(twoDList, axis):
    if axis == 0:
        return [sum(x)/len(x) for x in zip(*twoDList)]
    elif axis == 1:
        arr = []
        for i in range(n):
            arr.append(sum(twoDList[i])/len(twoDList[i]))
        return arr
    else:
        return sum([sum(x) for x in zip(*twoDList)])/(m*n)

def vari(twoDList, axis):
    if axis == 0:
        me = mean(twoDList, axis)
        new_arr = []
        for i in range(n):
            new_arr.append(list(map(operator.sub, twoDList[i], me)))
        for i in range(n):
            new_arr[i] = list(map(lambda x: x ** 2, new_arr[i]))
        #var = sum([(xi - me)**2 for xi in zip(*twoDList)]) / n
        var = [sum(x)/len(x) for x in zip(*new_arr)]
        #var = list(map(lambda x: (lambda r, z: r + (z-me)**2, x), twoDList))
        return var
    elif axis == 1:
        me = mean(twoDList, axis)
        arr = []
        for i in range(n):
            arr.append(sum([(xi - me[i])**2 for xi in twoDList[i]]) / len(twoDList[i]))
        return arr
    else:
        me = mean(twoDList,axis)
        collection_arr = []
        for i in range(n):
            collection_arr.append(sum([(xi - me)**2 for xi in twoDList[i]]) / len(twoDList[i]))
        return sum(collection_arr)/m
        
    
def std_dev(twoDList, axis):
    if axis == 0 or axis == 1:
        array = list(map(lambda x: math.sqrt(x), vari(twoDList, axis)))
        return array
    else:
        return math.sqrt(vari(twoDList, axis))
    
n, m = map(int, input().split())

a = []
b = []

for _ in range(n):
    a.append(list(map(int,input().split())))
    
#print(a)

#print(mean(a, 0))
matrix_printer(mean(a, 1), "mean")
#print(mean(a, None))
matrix_printer(vari(a, 0), "var")
#print(vari(a, 1))
#print(vari(a, None))
#print(std_dev(a, 0))
#print(std_dev(a, 1))
if std_dev(a, None) >= 1:
    print("%.11f" % std_dev(a, None))
elif std_dev(a, None) > 0:
    print("%.12f" % std_dev(a, None))
else:
    print("%.1f" % std_dev(a, None))
    
