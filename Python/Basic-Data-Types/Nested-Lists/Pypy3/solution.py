if __name__ == '__main__':
    ls = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        ls.append([name,score])

second_highest = sorted(list(set([marks for name, marks in ls])))[1]
print('\n'.join([a for a,b in sorted(ls) if b == second_highest]))
