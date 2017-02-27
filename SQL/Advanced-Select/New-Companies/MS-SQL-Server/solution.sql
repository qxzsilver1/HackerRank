/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT c.Company_Code, c.founder, count(Distinct e.Lead_Manager_Code), count(distinct e.Senior_Manager_Code), count(distinct e.Manager_Code), count(distinct e.employee_Code) FROM Company c JOIN Employee e ON c.Company_Code = e.Company_Code GROUP BY c.Company_Code, c.Founder ORDER BY c.COMpany_Code;
