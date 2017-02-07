# Enter your code here. Read input from STDIN. Print output to STDOUT
(_, A) = (
    raw_input(),
    set(map(int, raw_input().split()))
)

for _ in xrange(input()):
    (command, newSet) = (
        raw_input().split()[0],
        set(map(int, raw_input().split()))
    )

    getattr(A, command)(newSet)

print sum(A)
