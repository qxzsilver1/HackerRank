/*
    Compare two Linked Lists A and B
    Return 1 if they are identical and 0 if they are not.
    Node is defined as
    var Node = function(data) {
        this.data = data;
        this.next = null;
    }
*/

// This is a "method-only" submission.
// You only need to complete this method.

function compareLinkedLists( headA, headB) {
    if (headA == null && headB == null) return 1;
    
    if (headA != null && headB != null)
        return (((headA.data == headB.data) | 0) && compareLinkedLists(headA.next, headB.next)) | 0 //solution to convert boolean in asm.js 
        
    return 0
}
