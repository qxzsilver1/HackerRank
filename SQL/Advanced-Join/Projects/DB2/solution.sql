
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/    
SELECT MIN(START_DATE), MAX(END_DATE) 
FROM ( SELECT START_DATE, END_DATE, RN, START_DATE - RN DAYS AS GRP 
      FROM 
      (SELECT START_DATE,END_DATE,ROW_NUMBER() OVER (ORDER BY START_DATE) AS RN 
            FROM PROJECTS) 
     )  
GROUP BY GRP
ORDER BY COUNT(*), MIN(START_DATE);
