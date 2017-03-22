#Body
"""
 Get Node data of the Nth Node from the end.
 head could be None as well for empty list
 Node is defined as
 
 class Node(object):
 
   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 return back the node data of the linked list in the below method.
"""

def GetNode(head, position):
    ref_ptr = head
    main_ptr = head
    count = position
    
    if (head == None):
        return -1
    
    while (count > 0):
        ref_ptr = ref_ptr.next
        count -= 1
        
    if (ref_ptr == None):
        return -1
    
    while (ref_ptr.next != None):
        ref_ptr = ref_ptr.next
        main_ptr = main_ptr.next
        
    return main_ptr.data
