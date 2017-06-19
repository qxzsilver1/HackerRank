"""class Node:
    def __init__(self, freq,data):
        self.freq= freq
        self.data=data
        self.left = None
        self.right = None
"""        
import sys

# Enter your code here. Read input from STDIN. Print output to STDOUT
def decodeHuff(root , s):
   #Enter Your Code Here
    temp = root
    for c in s:
        temp = temp.left if c == '0' else temp.right
        if (temp.data != '\0'): 
            sys.stdout.write(temp.data)
            temp = root
