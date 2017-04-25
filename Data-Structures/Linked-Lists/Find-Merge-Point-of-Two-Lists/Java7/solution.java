/*
  Find merge point of two linked lists
  head pointer input could be NULL as well for empty list
  Node is defined as 
  class Node {
     int data;
     Node next;
  }
*/
int FindMergeNode(Node headA, Node headB) {
    // Complete this function
    // Do not write the main method. 
    int c1 = getCount(headA);
    int c2 = getCount(headB);
    int d;
    
    if (c1 > c2) {
        d = c1 - c2;
        return getIntersectionNode(d, headA, headB);
    }
    else {
        d = c2 - c1;
        return getIntersectionNode(d, headB, headA);
    }
}

int getIntersectionNode(int d, Node head1, Node head2) {
    Node current1 = head1;
    Node current2 = head2;
    
    for (int i = 0; i < d; i++) {
        if (current1 == null)
            return -1;
        
        current1 = current1.next;
    }
    
    while (current1 != null && current2 != null) {
        if (current1.data == current2.data)
            return current1.data;
        
        current1 = current1.next;
        current2 = current2.next;
    }
    
    return -1;
}

int getCount(Node node) {
    Node current = node;
    int count = 0;
    
    while (current != null) {
        count++;
        current = current.next;
    }
    
    return count;
}
