/*
Enter your query here.
*/
SELECT DISTINCT CITY FROM STATION WHERE LEFT(UPPER(CITY), 1) NOT IN ('A','E','I','O','U') AND RIGHT(UPPER(CITY), 1) NOT IN ('A','E','I','O','U');
