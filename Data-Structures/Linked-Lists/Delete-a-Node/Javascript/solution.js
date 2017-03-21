/*
    Delete Node at a given position in a linked list
    head pointer input could be NULL as well for empty list
    Node is defined as
    var Node = function(data) {
        this.data = data;
        this.next = null;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function deleteNode(head, position) {
    if (head == null)
        return null;
    else {
        if (position == 0)
            head = head.next;
        else {
            curr = head;
            counter = 0;

            while (counter != position-1) {
                curr = curr.next;
                counter++;
            }
            
            temp = curr.next;
            curr.next = temp.next;
        }
    }
    
    return head;
}
