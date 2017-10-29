"""
Node is defined as
self.left (the left child of the node)
self.right (the right child of the node)
self.data (the value of the node)
"""
def lca(root , v1 , v2):
  #Enter your code here
    if v1 > v2:
        temp = v2
        v2 = v1
        v1 = temp
        
    while root.data < v1 or root.data > v2:
        if root.data < v1:
            root = root.right
        elif root.data > v2:
            root = root.left
            
    return root
