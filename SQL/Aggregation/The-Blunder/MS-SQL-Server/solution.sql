/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT CEILING(AVG(CAST(SALARY as DECIMAL(9,2))) - AVG(CAST(REPLACE(Salary,'0','') as DECIMAL(9,2)))) from EMPLOYEES;
