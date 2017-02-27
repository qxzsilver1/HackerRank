
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT CASE WHEN G.Grade<8 THEN 'NULL' ELSE S.Name END AS Name, G.Grade, S.Marks FROM Students S INNER JOIN Grades G ON S.Marks BETWEEN G.Min_Mark and G.Max_Mark ORDER BY G.Grade DESC,Name,Marks;
