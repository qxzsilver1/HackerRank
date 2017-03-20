/*
  Insert Node at a given position in a linked list 
  head can be NULL 
  First element in the linked list is at position 0
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* InsertNth(Node *head, int data, int position)
{
  // Complete this method only
  // Do not write main function. 
    Node *nth = new Node;
    nth->data = data;
    nth->next = NULL;
    
    if (head == NULL)
        head = nth;
    else {
        if (position == 0) {
            nth->next = head;
            head = nth;
        }
        else {
            Node *curr = head;
            int counter = 1;
            
            while (counter != position) {
                curr = curr->next;
                counter++;
            }
            nth->next = curr->next;
            curr->next = nth;
        }
    }
    
    return head;
}
