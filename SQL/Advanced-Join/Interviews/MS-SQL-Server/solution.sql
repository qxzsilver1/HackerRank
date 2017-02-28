/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
with A as
(
select c.contest_id, hacker_id, name, challenge_id
from contests c 
join colleges cd on c.contest_id=cd.contest_id
join challenges ca on cd.college_id=ca.college_id
)
,B as
(
select A.contest_id, max(hacker_id) as h, max(name) as n, sum(isnull(total_submissions,0)) as ts, sum(isnull(total_accepted_submissions,0)) as tas
from A
left outer join submission_stats ss on A.challenge_id=ss.challenge_id
group by A.contest_id
)
,C as
(
select A.contest_id, max(hacker_id) as h, max(name) as n, sum(isnull(total_views,0)) as tv, sum(isnull(total_unique_views,0)) as tuv
from A
left outer join view_stats vs on A.challenge_id=vs.challenge_id
group by A.contest_id
)
select B.contest_id, B.h, B.n, ts,tas,tv,tuv
from B join C
on B.contest_id=C.contest_id
where ts>0 or tas>0 or tv>0 or tuv>0
order by B.contest_id;
