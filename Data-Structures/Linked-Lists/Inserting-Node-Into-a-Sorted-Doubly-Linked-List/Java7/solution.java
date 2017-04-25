/*
  Insert Node at the end of a linked list 
  head pointer input could be NULL as well for empty list
  Node is defined as 
  class Node {
     int data;
     Node next;
     Node prev;
  }
*/

Node SortedInsert(Node head,int data) {
    Node current = head;
    Node previous = null;
    while (current != null && current.data < data) {
        previous = current;
        current = current.next;
    }

    Node node = new Node();
    node.data = data;

    if (previous == null) {
        head = node;
    } else {
        // re-link previous node
        previous.next = node;
        node.prev = previous;
    }

    if (current != null) {
        // re-link next node
        current.prev = node;
        node.next = current;
    }

    return head;
}
