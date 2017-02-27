/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
WITH TOTAL AS (
SELECT MONTHS * SALARY AS X FROM EMPLOYEE)
SELECT TOP 1 X, COUNT(*) FROM TOTAL GROUP BY X ORDER BY COUNT(*) DESC 
