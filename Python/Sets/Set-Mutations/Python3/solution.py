(_, A) = (
    input(),
    set(map(int, input().split()))
)

for _ in range(int(input())):
    (command, newSet) = (
        input().split()[0],
        set(map(int, input().split()))
    )

    getattr(A, command)(newSet)

print(sum(A))
