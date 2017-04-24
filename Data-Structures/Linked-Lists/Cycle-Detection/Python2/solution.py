"""
Detect a cycle in a linked list. Note that the head pointer may be 'None' if the list is empty.

A Node is defined as: 
 
    class Node(object):
        def __init__(self, data = None, next_node = None):
            self.data = data
            self.next = next_node
"""

def has_cycle(head):
    if (head == None):
        return False
    
    slow = head
    fast = head.next
    
    while (fast != None and fast.next != None):
        if (slow == fast):
            return True
        
        slow = slow.next
        fast = fast.next.next
    
    return False
