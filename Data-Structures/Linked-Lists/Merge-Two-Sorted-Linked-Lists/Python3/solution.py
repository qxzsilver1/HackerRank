"""
 Merge two linked lists
 head could be None as well for empty list
 Node is defined as
 
 class Node(object):
 
   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 return back the head of the linked list in the below method.
"""

def MergeLists(headA, headB):
    if (headA == None):
        return headB
    if (headB == None):
        return headA
    
    merged = None
    
    if (headA.data <= headB.data):
        merged = headA
        merged.next = MergeLists(headA.next, headB)
    else:
        merged = headB
        merged.next = MergeLists(headA, headB.next)
        
    return merged
