/*
Enter your query here.
*/
/*
Enter your query here.
*/
select group_concat(number SEPARATOR '&') from
(select 
A.num number,
min(B.num) smallest_divisor
from
(select d1.num+10*d2.num+100*d3.num+1 as num
from (select 0 as num union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9
     ) d1 join
     (select 0 as num union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9
     ) d2 join
     (select 0 as num union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9
     ) d3
order by num) A
join
(select d1.num+10*d2.num+100*d3.num+1 as num
from (select 0 as num union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9
     ) d1 join
     (select 0 as num union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9
     ) d2 join
     (select 0 as num union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9
     ) d3
order by num) B
where A.num % B.num = 0 and B.num > 1
group by A.num) K
where
number = smallest_divisor;
