"""
 Insert a node into a sorted doubly linked list
 head could be None as well for empty list
 Node is defined as
 
 class Node(object):
 
   def __init__(self, data=None, next_node=None, prev_node = None):
       self.data = data
       self.next = next_node
       self.prev = prev_node

 return the head node of the updated list 
"""
def SortedInsert(head, data):
    current = head
    previous = None
    
    while (current != None and current.data < data):
        previous = current
        current = current.next
        
    node = Node(data, None, None)
    
    if (previous == None):
        head = node
    else:
        previous.next = node
        node.prev = previous
        
    if (current != None):
        current.prev = node
        node.next = current
        
    return head
