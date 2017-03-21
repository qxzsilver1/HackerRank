/*
  Merge two sorted lists A and B as one linked list
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* MergeLists(Node *headA, Node* headB)
{
  // This is a "method-only" submission. 
  // You only need to complete this method 
    if (!headA)
        return headB;
    if (!headB)
        return headA;
    
    Node *merged = NULL;
    
    if (headA->data <= headB->data) {
        merged = headA;
        merged->next = MergeLists(headA->next, headB);
    }
    else {
        merged = headB;
        merged->next = MergeLists(headA, headB->next);
    }
    
    return merged;
}
