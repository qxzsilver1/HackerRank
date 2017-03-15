/*
  Insert Node at the end of a linked list 
  head pointer input could be NULL as well for empty list
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* Insert(Node *head,int data)
{
  // Complete this method
    Node *last = new Node;
    last->data = data;
    last->next = NULL;
    
    if (head == NULL)
    {
        head = last;
    }
    else {
        Node *curr = head;
        while (curr->next != NULL)
            curr = curr->next;
        
        curr->next = last;
    }
    
    return head;
}
