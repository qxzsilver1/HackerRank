/* Node is defined as
var Node = function(data) {
    this.data = data;
    this.next = null;
}
*/
// This is a "method-only" submission.
// You only need to complete this method.

function print(head) {
    curr = head;
    
    while (curr != null) {
        process.stdout.write(curr.data + "\n");
        curr = curr.next;
    }
}
