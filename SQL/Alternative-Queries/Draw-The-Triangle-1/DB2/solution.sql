
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
with x(id,val) as 
(
 select 20, REPEAT('*',20) from sysibm.sysdummy1
 union all
 select id-1, REPEAT('*',id-1) from x where id > 1
)
select val from x;
