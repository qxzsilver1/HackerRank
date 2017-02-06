ls = []
for _ in range(int(raw_input())):
    name = raw_input()
    score = float(raw_input())
    ls.append([name, score])

second_highest = sorted(list(set([marks for name, marks in ls])))[1]
print '\n'.join([a for a,b in sorted(ls) if b == second_highest])
