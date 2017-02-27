/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT CONVERT(DECIMAL(18,2), SUM(LAT_N)), CONVERT(DECIMAL(18,2),SUM(LONG_W)) FROM Station;
