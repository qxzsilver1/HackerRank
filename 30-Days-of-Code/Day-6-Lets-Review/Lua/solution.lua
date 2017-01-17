n = io.read("*number", "*l")

for _ = 1, n
do
    s = io.read("*l")
    
    firstHalf = ""
    secondHalf = ""
    
    for i = 1, #s
    do
        c = s:sub(i, i)
        
        if i % 2 ~= 0 then
            firstHalf = firstHalf .. c
        else
            secondHalf = secondHalf .. c
        end
    end
    print(string.format("%s %s", firstHalf, secondHalf))
end
