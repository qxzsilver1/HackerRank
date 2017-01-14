n = io.read("*number", "*l")

for i = 1, 10, 1
do
    print(string.format("%d x %d = %d", n, i, n*i))
end
