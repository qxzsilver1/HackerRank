
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT A.HACKER_ID,A.NAME FROM HACKERS A
INNER JOIN
SUBMISSIONS B ON A.HACKER_ID = B.HACKER_ID
INNER JOIN
CHALLENGES C ON B.CHALLENGE_ID = C.CHALLENGE_ID 
INNER JOIN
DIFFICULTY D ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL AND B.SCORE = D.SCORE
GROUP BY A.HACKER_ID, A.NAME HAVING COUNT(*)>=2 ORDER BY COUNT(*) DESC,A.HACKER_ID;
