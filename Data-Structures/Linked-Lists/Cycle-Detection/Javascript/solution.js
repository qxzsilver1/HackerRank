/*
    Detect a cycle in a Linked List.
    Note that the head may be 'null' if the list is empty.
    Node is defined as
    var Node = function(data) {
        this.data = data;
        this.next = null;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function hasCycle(head) {
    if (head == null)
        return false;
    
    var slow = head;
    var fast = head.next;
    
    while (fast != null && fast.next != null) {
        if (slow == fast)
            return true;
        
        slow = slow.next;
        fast = fast.next.next;
    }
    
    return false;
}
