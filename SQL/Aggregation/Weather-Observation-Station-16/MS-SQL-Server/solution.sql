/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT CONVERT(DECIMAL(18,4), MIN(LAT_N)) FROM Station WHERE LAT_N > 38.7780;
