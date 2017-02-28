/*
Enter your query here.
*/
set @a := 0;
select repeat('* ', (@a := @a + 1))
from(
select 1 union select 2 union select 3 union select 4 union select 5) r
join(
    select 1 union select 2 union select 3 union select 4
)w;
