/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT BST.N, CASE
	WHEN BST.P IS NULL THEN 'Root' 
	WHEN Parents.P IS NULL THEN 'Leaf'
	ELSE 'Inner' END
FROM BST
LEFT JOIN (SELECT DISTINCT P FROM BST ) Parents on Parents.P=BST.N
ORDER BY BST.N
