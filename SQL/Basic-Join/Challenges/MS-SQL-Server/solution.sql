/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
WITH t AS (
SELECT HACKERS.HACKER_ID, MIN(NAME) AS NAME, COUNT(*) AS N
FROM HACKERS INNER JOIN CHALLENGES ON HACKERS.HACKER_ID = CHALLENGES.HACKER_ID
GROUP BY HACKERS.HACKER_ID),
t1 AS (
SELECT N, COUNT(*) AS NN FROM t GROUP BY N)
SELECT t.HACKER_ID, t.NAME, t.N FROM
    t INNER JOIN t1 ON t.N = t1.N
WHERE t.N = (SELECT MAX(N) FROM t)
OR t1.NN = 1
ORDER BY t.N DESC, t.HACKER_ID;
