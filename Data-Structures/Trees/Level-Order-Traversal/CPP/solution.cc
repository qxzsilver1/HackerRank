
/*
struct node
{
    int data;
    node* left;
    node* right;
}*/

#include <queue>

void LevelOrder(node * root)
{
    if (root == NULL) return;
    
    queue<node *> q;
    q.push(root);
    
    while (!q.empty())
    {
        node *nod = q.front();
        cout << nod->data << " ";
        q.pop();
        
        if (nod->left != NULL)
            q.push(nod->left);
        
        if (nod->right != NULL)
            q.push(nod->right);
    }
  
}
