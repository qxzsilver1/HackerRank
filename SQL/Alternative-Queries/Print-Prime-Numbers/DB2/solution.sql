
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
WITH NUMBERS (LEVEL, PRIME) AS
( 
    SELECT 1, 1 FROM SYSIBM.SYSDUMMY1
    UNION ALL
    SELECT LEVEL + 1, LEVEL + 1 FROM NUMBERS WHERE LEVEL < 1000
)
SELECT LISTAGG(NUM1,'&') WITHIN GROUP (ORDER BY NUM1) AS NUM1 FROM
(SELECT X.PRIME AS NUM1 FROM
    (SELECT NUMBERS.LEVEL, NUMBERS.PRIME FROM NUMBERS) AS X
WHERE NOT EXISTS
    (SELECT 1 FROM NUMBERS Y WHERE Y.PRIME BETWEEN 2 AND SQRT(X.PRIME) AND MOD(X.PRIME, Y.PRIME) = 0)
ORDER BY X.PRIME);
