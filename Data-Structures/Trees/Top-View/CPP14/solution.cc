/*
struct node
{
    int data;
    node* left;
    node* right;
};

*/

void top_view_postOrder(node * root);
void top_view_preOrder(node * root);


void top_view(node * root)
{
    top_view_postOrder(root);
    top_view_preOrder(root->right);
}

void top_view_postOrder(node * root)
{
    if (!root) return;
    
    top_view_postOrder(root->left);
    cout << root->data << " ";
}

void top_view_preOrder(node * root)
{
    if (!root) return;
    
    cout << root->data << " ";
    top_view_preOrder(root->right);
}
