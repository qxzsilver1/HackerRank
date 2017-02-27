
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT DECIMAL(ROUND(SQRT((MAX(LONG_W)-MAX(LAT_N))*(MAX(LONG_W)-MAX(LAT_N))+(MIN(LONG_W)-MIN(LAT_N))*(MIN(LONG_W)-MIN(LAT_N))),4),17,4) FROM STATION;
