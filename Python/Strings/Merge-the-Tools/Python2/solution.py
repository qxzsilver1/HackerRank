def merge_the_tools(string, k):
    # your code goes here
    n=len(string)

    for x in xrange(0, n, k):
        slicedStr = string[x : x+k]
        temp =[]
        for c in slicedStr:
            if c not in temp:
                temp.append(c)
        print ''.join(temp)
        
if __name__ == '__main__':
    string, k = raw_input(), int(raw_input())
    merge_the_tools(string, k)
