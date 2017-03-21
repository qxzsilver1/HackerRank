/*
  Merge two linked lists 
  head pointer input could be NULL as well for empty list
  Node is defined as 
  class Node {
     int data;
     Node next;
  }
*/

Node MergeLists(Node headA, Node headB) {
     // This is a "method-only" submission. 
     // You only need to complete this method 
    if (headA == null)
        return headB;
    if (headB == null)
        return headA;
    
    Node merged = new Node();
    
    if (headA.data <= headB.data) {
        merged = headA;
        merged.next = MergeLists(headA.next, headB);
    }
    else {
        merged = headB;
        merged.next = MergeLists(headA, headB.next);
    }
    
    return merged;
}
