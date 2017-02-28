/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select f1.x, f1.y from functions as f1
inner join functions as f2 on f2.y = f1.x
where f1.y >= f1.x and f2.x = f1.y
group by f1.x, f1.y
having count(*) > 1 or (count(*) = 1 and f1.y != f1.x)
order by f1.x;
