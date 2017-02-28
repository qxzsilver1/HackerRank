
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT A.NAME
FROM STUDENTS A, FRIENDS B, PACKAGES C
WHERE A.ID = B.ID
AND C.ID = B.FRIEND_ID
AND C.SALARY > (
SELECT SALARY
FROM PACKAGES WHERE ID = A.ID)
ORDER BY SALARY;
