import sys

n = int(raw_input())

for i in range(1, n+1):
    s = raw_input()
    
    firstHalf = ""
    secondHalf = ""
    
    for j in range(0, len(s)):
        if j % 2 == 0:
            firstHalf += s[j]
        else:
            secondHalf += s[j]
    
    print firstHalf + " " + secondHalf
    
    firstHalf = ""
    secondHalf = ""
