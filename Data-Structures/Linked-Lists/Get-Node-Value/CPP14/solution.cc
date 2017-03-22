/*
  Get Nth element from the end in a linked list of integers
  Number of elements in the list will always be greater than N.
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
int GetNode(Node *head,int positionFromTail)
{
  // This is a "method-only" submission. 
  // You only need to complete this method. 
    int count = positionFromTail;
    Node *main_ptr = head;
    Node *ref_ptr = head;
    
    if (head == NULL)
        return -1;
    
    while (count--)
        ref_ptr = ref_ptr->next;
    
    if (ref_ptr == NULL)
        return -1;
    
    while (ref_ptr->next) {
        ref_ptr = ref_ptr->next;
        main_ptr = main_ptr->next;
    }
    
    return main_ptr->data;
}
