/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select a.Name from students a, friends b, packages c, packages c1
where a.Id = b.Id and a.Id = c.Id and b.friend_id = c1.Id and c1.Salary > c.Salary order by c1.Salary;
