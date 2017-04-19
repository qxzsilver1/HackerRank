/*
    Get Nth element data from the end in a Linked List
    Number of elements in the list will always be greater than N.
    Node is defined as
    var Node = function(data) {
        this.data = data;
        this.next = null;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function getNodeValue( head, position) {
    ref_ptr = head;
    main_ptr = head;
    count = position;
    
    if (head == null)
        return -1;
    
    while (count > 0) {
        ref_ptr = ref_ptr.next;
        count -= 1;
    }
        
    if (ref_ptr == null)
        return -1;
    
    while (ref_ptr.next != null) {
        ref_ptr = ref_ptr.next;
        main_ptr = main_ptr.next;
    }
        
    return main_ptr.data;
}
