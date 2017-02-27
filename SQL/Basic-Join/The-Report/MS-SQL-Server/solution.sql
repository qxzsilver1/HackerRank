/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT CASE WHEN G.Grade<8 THEN NULL ELSE S.Name END AS Name, G.Grade, S.Marks FROM Students S INNER JOIN Grades G ON S.Marks BETWEEN G.Min_Mark and G.Max_Mark ORDER BY G.Grade DESC,Name,Marks;
