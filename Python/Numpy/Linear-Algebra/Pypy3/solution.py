# Enter your code here. Read input from STDIN. Print output to STDOUT

def determinant(matrix, multiplier):
    width = len(matrix)
    if width == 1:
        return multiplier * matrix[0][0]
    else:
        sign = -1
        total = 0
        for i in range(width):
            m = []
            for j in range(1, width):
                buf = []
                for k in range(width):
                    if k != i:
                        buf.append(matrix[j][k])
                m.append(buf)
            sign *= -1
            total += multiplier * determinant(m, sign * matrix[0][i])
        return total

n = int(input())

a = []

for _ in range(n):
    a.append(list(map(float, input().split())))
    
print(round(determinant(a,1),2))
