from collections import namedtuple
n, Student = int(input()), namedtuple('Student', input())
print("%.2f" %( sum([float(stud.MARKS) for stud in [Student(*input().split()) for _ in range(n)]]) / n ))
