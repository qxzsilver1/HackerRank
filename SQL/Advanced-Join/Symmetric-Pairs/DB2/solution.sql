
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select f1.x, f1.y from functions as f1
inner join functions as f2 on f2.y = f1.x
where f1.y >= f1.x and f2.x = f1.y
group by f1.x, f1.y
having count(*) > 1 or (count(*) = 1 and f1.y != f1.x)
order by f1.x;
