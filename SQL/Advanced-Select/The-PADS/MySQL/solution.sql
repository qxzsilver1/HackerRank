/*
Enter your query here.
*/
SELECT CONCAT(Name,'(',SUBSTRING(Occupation,1,1),')') AS Name
FROM occupations
ORDER BY Name;
SELECT CONCAT('There are total',' ',COUNT(occupation),' ',LOWER(occupation),'s.') AS total
FROM occupations
GROUP BY occupation
ORDER BY total;
