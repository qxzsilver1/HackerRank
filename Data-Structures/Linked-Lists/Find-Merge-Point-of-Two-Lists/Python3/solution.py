"""
 Find the node at which both lists merge and return the data of that node.
 head could be None as well for empty list
 Node is defined as
 
 class Node(object):
 
   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 
"""

def getRev(head):
    S = []
    while head:
        S.append(head.data)
        head = head.next
    return S

def FindMergeNode(headA, headB):
    A = getRev(headA)
    B = getRev(headB)
    c = A[-1]
    while A[-1] == B[-1]:
        c = A.pop()
        _ = B.pop()
    return c
