/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT MIN(start_date), MAX(end_date)
FROM (
    SELECT start_date,
           end_date,
           start_date - row_number() OVER (ORDER BY start_date) as d FROM projects
)
GROUP BY d
ORDER BY MAX(end_date) - MIN(start_date), MIN(start_date);
