[print(sum(marks)/len(marks)) for marks in zip(*[list(map(float, input().split())) for _ in range(int(input().split()[1]))])]
