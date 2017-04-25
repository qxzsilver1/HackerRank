/*
   class Node 
       int data;
       Node left;
       Node right;
*/
void top_view(Node root)
{
    top_view_postOrder(root);
    top_view_preOrder(root.right);
}

void top_view_postOrder(Node root)
{
    if (root == null) return;
    
    top_view_postOrder(root.left);
    System.out.print(root.data + " ");
}

void top_view_preOrder(Node root)
{
    if (root == null) return;
    
    System.out.print(root.data + " ");
    top_view_preOrder(root.right);
}
