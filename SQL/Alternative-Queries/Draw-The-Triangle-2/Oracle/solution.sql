/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT LPAD(' ', 2*(LEVEL), '* ') FROM DUAL CONNECT BY LEVEL < 21;
