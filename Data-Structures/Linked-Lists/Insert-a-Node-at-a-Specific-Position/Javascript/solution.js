/*
  Insert Node at a given position in a linked list 
  head can be NULL 
  First element in the linked list is at position 0
  Node is defined as
  var Node = function(data) {
    this.data = data;
    this.next = null;
  }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function insert(head, data, position) {
    var nth = new Node(data);
    
    if (head == null)
        head = nth;
    else {
        if (position == 0) {
            nth.next = head;
            head = nth;          
        }
        else {
            curr = head;
            counter = 1;
            
            while (counter != position) {
                curr = curr.next;
                counter++;
            }
            
            nth.next = curr.next;
            curr.next = nth;
        }
    }
    
    return head;
}
