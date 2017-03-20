
/*
  Insert Node at the beginning of a linked list
  head pointer input could be NULL as well for empty list
  Node is defined as
  var Node = function(data) {
      this.data = data;
      this.next = null;
  }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function insert(head, data) {
    var first = new Node(data);
    
    if (head == null)
        head = first;
    else {
        first.next = head;
        head = first;
    }
    
    return head;
}
