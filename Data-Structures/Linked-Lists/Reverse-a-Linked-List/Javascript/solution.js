/*
    Reverse a linked list and return the head
    The input list will have at least one element
    Node is defined as
    var Node = function(data) {
        this.data = data;
        this.next = null;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function reverseLinkedList(head) {
    if (head == null) return;
    
    if (head.next == null) return head;
    
    rest = reverseLinkedList(head.next);
    
    head.next.next = head;
    head.next = null;
    
    return rest;
}
