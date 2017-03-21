"""
 Delete Node at a given position in a linked list
 Node is defined as
 
 class Node(object):
 
   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node

 return back the head of the linked list in the below method. 
"""

def Delete(head, position):
    if (head == None):
        return None
    else:
        if (position == 0):
            head = head.next
        else:
            curr = head
            counter = 0
            
            while (counter != position-1):
                curr = curr.next
                counter += 1
                
            temp = curr.next
            curr.next = temp.next
        
    return head
