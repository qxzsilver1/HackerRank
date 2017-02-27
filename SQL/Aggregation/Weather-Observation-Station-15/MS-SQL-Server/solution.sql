/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
Select CONVERT(DECIMAL(18,4), MAX(LONG_W)) from STATION WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N<137.2345);
