/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT CONCAT(Name,'(',SUBSTRING(Occupation,1,1),')') AS Name
FROM occupations
ORDER BY Name;
SELECT CONCAT('There are total',' ',COUNT(occupation),' ',LOWER(occupation),'s.') AS total
FROM occupations
GROUP BY occupation
ORDER BY total;
