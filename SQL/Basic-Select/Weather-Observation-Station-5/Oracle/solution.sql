/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT MIN(CITY) , LENGTH(CITY) FROM STATION GROUP BY LENGTH(CITY) HAVING LENGTH(CITY) =(SELECT MIN(LENGTH(CITY)) FROM STATION) OR LENGTH(CITY) =(SELECT MAX(LENGTH(CITY)) FROM STATION) ORDER BY LENGTH(CITY) ASC;
