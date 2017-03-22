/*
  Get Nth element from the end in a linked list of integers
  Number of elements in the list will always be greater than N.
  Node is defined as 
  class Node {
     int data;
     Node next;
  }
*/
    
int GetNode(Node head,int n) {
     // This is a "method-only" submission. 
     // You only need to complete this method. 
    Node main_ptr = head;
    Node ref_ptr = head;

    int count = n;
    
    if (head == null)
        return -1;
    
    while (count > 0) {
        ref_ptr = ref_ptr.next;
        count--;
    }
    
    if (ref_ptr == null)
        return -1;
    
    while (ref_ptr.next != null) {
        ref_ptr = ref_ptr.next;
        main_ptr = main_ptr.next;
    }
    
    return main_ptr.data;
}
