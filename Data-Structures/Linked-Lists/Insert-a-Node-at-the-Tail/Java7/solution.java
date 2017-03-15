/*
  Insert Node at the end of a linked list 
  head pointer input could be NULL as well for empty list
  Node is defined as 
  class Node {
     int data;
     Node next;
  }
*/
Node Insert(Node head,int data) {
// This is a "method-only" submission. 
// You only need to complete this method. 
    Node last = new Node();
    last.data = data;
    last.next = null;
    
    if (head == null)
        head = last;
    else {
        Node curr = head;
        while (curr.next != null)
            curr = curr.next;
        
        curr.next = last;
    }
    
    return head;
}
