/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
Select N, ' Leaf' from BST where P is not NULL  and (N NOT IN (select P from BST where P IS NOT NULL)) UNION Select N,' Inner' from BST where (P is not NULL) and N IN (select P from BST where P IS NOT NULL) UNION Select N,' Root' from BST where P is NULL  Order BY N;
