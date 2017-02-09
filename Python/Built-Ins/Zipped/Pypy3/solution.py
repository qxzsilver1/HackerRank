# Enter your code here. Read input from STDIN. Print output to STDOUT
[print(sum(marks)/len(marks)) for marks in zip(*[list(map(float, input().split())) for _ in range(int(input().split()[1]))])]
