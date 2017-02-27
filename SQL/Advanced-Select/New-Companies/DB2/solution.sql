
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT c.Company_Code, c.founder, count(Distinct e.Lead_Manager_Code), count(distinct e.Senior_Manager_Code), count(distinct e.Manager_Code), count(distinct e.employee_Code) FROM Company c JOIN Employee e ON c.Company_Code = e.Company_Code GROUP BY c.Company_Code, c.Founder ORDER BY c.Company_Code;        
