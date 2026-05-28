# Enter your code here. Read input from STDIN. Print output to STDOUT

# import math
 
# def pearson_correlation(sx, sy):
#     n = len(sx)
#     x, y, xy, xsq, ysq = 0, 0, 0, 0, 0
    
#     for i in range(n):
#         x += sx[i]
#         y += sy[i]
#         xy += sx[i] * sy[i]
#         xsq += sx[i] * sx[i]
#         ysq += sy[i] * sy[i]
#     return (n * xy - x*y) / math.sqrt((n * xsq - x*x) * (n * ysq - y*y))

# N = int(input().strip())

# mpc_list = [list(map(int, input().split())) for i in range(N)]

# mathematics, physics, chemistry = map(list, zip(*mpc_list))

# print(physics)

# r_mp = pearson_correlation(mathematics, physics)
# r_pc = pearson_correlation(physics, chemistry)
# r_cm = pearson_correlation(chemistry, mathematics)

# print(round(r_mp, 2))
# print(round(r_pc, 2))
# print(round(r_cm, 2))


# print('{0:.2f}'.format(pearson_correlation(mathematics, physics)))
# print('{0:.2f}'.format(pearson_correlation(physics, chemistry)))
# print('{0:.2f}'.format(pearson_correlation(chemistry, mathematics)))

# print('%.2f\n%.2f\n%.2f' %(r_mp,r_pc,r_cm))


# print("%.2f" % r_mp)
# print("%.2f" % r_pc)
# print("%.2f" % r_cm)


def dot(x, y):
    return sum(i*j for i,j in zip(x,y))
    
def pcc(x, y, n):
    num = n*dot(x,y) - sum(x)*sum(y)
    den = pow(n*dot(x,x) - pow(sum(x),2),0.5)*pow(n*dot(y,y) - pow(sum(y),2),0.5)
    return round(num/den,2)

if __name__ == '__main__':
    n = int(input())
    m = [0]*n
    p = [0]*n
    c = [0]*n
    count = 0
    for _ in range(n):
        m[count], p[count], c[count] = map(int, tuple(input().split()))
        count += 1
    
    print(pcc(m,p,n))
    print(pcc(p,c,n))
    print(pcc(c,m,n))
