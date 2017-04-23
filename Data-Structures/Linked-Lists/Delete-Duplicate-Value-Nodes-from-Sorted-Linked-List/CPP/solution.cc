/*
  Remove all duplicate elements from a sorted linked list
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* RemoveDuplicates(Node *head)
{
  // This is a "method-only" submission. 
  // You only need to complete this method. 
    Node *node = head;
    if (head == NULL)
        return NULL;
    
    while (head->next) {
        if (head->data == head->next->data)
            head->next = head->next->next;
        else
            head = head->next;
    }
    
    return node;
}
