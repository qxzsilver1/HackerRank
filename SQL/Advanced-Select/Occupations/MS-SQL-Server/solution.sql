/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT [Doctor],[Professor],[Singer],[Actor] FROM (
SELECT Name,Occupation,ROW_NUMBER() OVER(PARTITION BY Occupation Order BY Name) as RowNum
FROM Occupations) X
Pivot (Max(Name)  FOR Occupation IN ([Doctor],[Actor],[Singer],[Professor])) X;
