# Enter your code here. Read input from STDIN. Print output to STDOUT
N, M = map(int, raw_input().split())
rows = [raw_input() for _ in range(N)]
K = input()

for row in sorted(rows, key=lambda row: int(row.split()[K])):
    print(row)
