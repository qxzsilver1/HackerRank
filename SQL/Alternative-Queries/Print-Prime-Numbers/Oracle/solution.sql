/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
WITH CTE AS
(SELECT LEVEL AS NUM FROM DUAL
CONNECT BY LEVEL <=1000)
SELECT LISTAGG(NUM1,'&') WITHIN GROUP (ORDER BY NUM1) AS NUM1
FROM
(
SELECT NUM1
FROM
(
SELECT A.NUM AS NUM1, B.NUM AS NUM2, MOD(A.NUM,B.NUM) AS MOD1 FROM CTE A
CROSS JOIN CTE B
WHERE A.NUM > B.NUM)
WHERE MOD1=0
GROUP BY NUM1
HAVING COUNT(*) = 1
);
