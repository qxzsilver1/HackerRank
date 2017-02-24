import numpy

n = int(input())

a = []

for _ in range(n):
    a.append(list(map(float, input().split())))
    
print(numpy.linalg.det(a))
