/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT TO_CHAR(ROUND(SQRT(POWER(MAX(LONG_W) - MAX(LAT_N),2)+POWER(MIN(LONG_W) - MIN(LAT_N),2)),4),'99D0000') FROM STATION;
