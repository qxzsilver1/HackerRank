/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT Start_Date,End_Date FROM (
	SELECT Start_Date,ROW_NUMBER() OVER(Order BY Start_Date) AS ID
	FROM Projects 
	WHERE Start_Date NoT IN (SELECT End_Date FROM Projects)) Starts
JOIN (
	SELECT End_Date,ROW_NUMBER() OVER(Order BY End_Date) AS ID
	FROM Projects 
	WHERE End_Date NoT IN (SELECT Start_Date FROM Projects)) Ends 
ON Starts.ID=Ends.ID
ORDER BY DATEDIFF(DAY,Start_Date,End_Date),Start_Date;
