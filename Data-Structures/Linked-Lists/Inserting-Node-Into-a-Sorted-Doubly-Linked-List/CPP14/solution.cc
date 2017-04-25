/*
    Insert Node in a doubly sorted linked list 
    After each insertion, the list should be sorted
   Node is defined as
   struct Node
   {
     int data;
     Node *next;
     Node *prev;
   }
*/
Node* SortedInsert(Node *head,int data)
{
    // Complete this function
   // Do not write the main method. 
    Node *current = head;
    Node *previous = NULL;
    while (current != NULL && current->data < data) {
        previous = current;
        current = current->next;
    }

    Node *node = new Node;
    node->data = data;

    if (previous == NULL) {
        head = node;
    } 
    else {
        // re-link previous node
        previous->next = node;
        node->prev = previous;
    }

    if (current != NULL) {
        // re-link next node
        current->prev = node;
        node->next = current;
    }

    return head;
}
