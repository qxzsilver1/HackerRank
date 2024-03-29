class Node:
    def __init__(self, info):
        self.info = info  
        self.left = None  
        self.right = None 
        self.level = None 

    def __str__(self):
        return str(self.info) 

def preOrder(root):
    if root == None:
        return
    print (root.info, end=" ")
    preOrder(root.left)
    preOrder(root.right)
    
class BinarySearchTree:
    def __init__(self): 
        self.root = None

#Node is defined as
#self.left (the left child of the node)
#self.right (the right child of the node)
#self.info (the value of the node)

    def insert(self, val):
        #Enter you code here.
        self.root = self.insertNodeToTree(self.root, val)
        return self.root
        
    
    def insertNodeToTree(self, root, val):
        if not root:
            return Node(val)
        
        if val > root.info:
            root.right = self.insertNodeToTree(root.right, val)
        else:
            root.left = self.insertNodeToTree(root.left, val)
        
        return root
        

tree = BinarySearchTree()
t = int(input())

arr = list(map(int, input().split()))

for i in range(t):
    tree.insert(arr[i])

preOrder(tree.root)
