"""
 Insert Node at a specific position in a linked list
 head input could be None as well for empty list
 Node is defined as
 
 class Node(object):
 
   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 return back the head of the linked list in the below method. 
"""
#This is a "method-only" submission.
#You only need to complete this method.
def InsertNth(head, data, position):
    nth = Node(data, None)
    
    if (head == None):
        head = nth
    else:
        if (position == 0):
            nth.next = head
            head = nth
        else:
            curr = head
            counter = 1
            
            while (counter != position):
                curr = curr.next
                counter += 1
                
            nth.next = curr.next
            curr.next = nth
            
    return head
