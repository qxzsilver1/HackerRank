/*
Node is defined as 

typedef struct node
{
   int data;
   node * left;
   node * right;
}node;

*/


node * insert(node * root, int value)
{
   if (root == NULL)
   {
       node * newRoot = new node;
       newRoot->data = value;
       newRoot->left = newRoot->right = NULL;
       return newRoot;
   }
    
   if (value < root->data)
       root->left = insert(root->left, value);
   else if (value > root->data)
       root->right = insert(root->right, value);

   return root;
}
