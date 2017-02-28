/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select distinct least(a.x, a.y), greatest(a.x, a.y)
from Functions a
where (a.x = a.y and (select count(*) from Functions b where a.x = b.y and a.y = b.x ) > 1) or
         (a.x != a.y and (select count(*) from Functions b where a.x = b.y and a.y = b.x ) > 0)
order by least(a.x, a.y);
