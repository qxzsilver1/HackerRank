/*  
   class Node
      public  int frequency; // the frequency of this tree
       public  char data;
       public  Node left, right;
    
*/ 

void decode(String S ,Node root)
    {
        Node temp = root;
        for (int i = 0; i < S.length(); i++) {
            char c = S.charAt(i);
            temp = c == '0' ? temp.left : temp.right;
            if (temp.data != '\0') {
                System.out.print(temp.data);
                temp = root;
            }
        }  
    }
