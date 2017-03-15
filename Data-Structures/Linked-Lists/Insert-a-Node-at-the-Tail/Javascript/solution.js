
/*
  Node is defined as
  var Node = function(data) {
      this.data = data;
      this.next = null;
  }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function insert(head, data) {
    var last = new Node(data);
    
    if (head == null)
        head = last;
    else {
        curr = head;
        while (curr.next != null)
            curr = curr.next;
        
        curr.next = last;
    }
    
    return head;
}

