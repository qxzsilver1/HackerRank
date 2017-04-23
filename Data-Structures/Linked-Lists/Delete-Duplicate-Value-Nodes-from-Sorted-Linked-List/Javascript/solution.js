/*
    Remove all duplicate elements from a sorted Linked List
    Node is defined as
    var Node = function(data) {
        this.data = data;
        this.next = null;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function removeDuplicates(head) {
    var node = head;
    
    if (head == null)
        return null;
    
    while (head.next != null) {
        if (head.data == head.next.data)
            head.next = head.next.next;
        else
            head = head.next;
    }
    
    return node;
}
