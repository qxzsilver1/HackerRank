# Enter your code here. Read input from STDIN. Print output to STDOUT
Regex_Pattern = r"<[^>]*>"


import re

if __name__ == '__main__':
    n = int(input())

    tag_dict = {}
    string_stripper = lambda x: x.strip("<>/")
    string_splitter = lambda y: y.split(" ")[0]
    matches = set()

    for i in range(n):
        s = input().strip()
        #print(s)
        match = re.findall(Regex_Pattern, s)

        match = list(map(string_stripper, match))
        match = list(map(string_splitter, match))
        matches = set(match).union(matches)

        #print(match)

    print(*list(sorted(matches)),sep=';')
