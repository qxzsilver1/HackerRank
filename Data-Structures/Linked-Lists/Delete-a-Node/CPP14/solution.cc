/*
  Delete Node at a given position in a linked list 
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* Delete(Node *head, int position)
{
  // Complete this method
    if (head == NULL)
        return NULL;
    else {
        if (position == 0)
            head = head->next;
        else {
            Node *curr = head;
            int counter = 0;
            
            while (counter != position-1) {
                curr = curr->next;
                counter++;
            }
            
            Node *temp = curr->next;
            curr->next = temp->next;
            free(temp);
        }
    }
    
    return head;
}
