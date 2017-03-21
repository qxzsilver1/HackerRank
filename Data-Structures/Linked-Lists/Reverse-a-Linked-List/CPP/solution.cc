/*
  Reverse a linked list and return pointer to the head
  The input list will have at least one element  
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* Reverse(Node *head)
{
  // Complete this method
    if (!head) return NULL;
    
    if (!(head->next)) return head;
    
    Node *rest = Reverse(head->next);
    
    head->next->next = head;
    head->next = NULL;
    
    return rest;
}
