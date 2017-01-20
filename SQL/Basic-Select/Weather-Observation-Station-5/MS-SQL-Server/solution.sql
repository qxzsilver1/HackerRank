/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY),CITY; 
SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY) DESC,CITY;

/*
another option:

SELECT MIN(CITY) , LEN(CITY) FROM STATION GROUP BY LEN(CITY) HAVING LEN(CITY) =(SELECT MIN(LEN(CITY)) FROM STATION) OR LEN(CITY) =(SELECT MAX(LEN(CITY)) FROM STATION) ORDER BY LEN(CITY) ASC;
*/
