/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select cn.contest_id, cn.hacker_id, cn.name,
sum(t_s), sum(a_s), sum(t_v), sum(u_v)
from contests cn, colleges cl, challenges ch,
(
select ss.challenge_id,
sum(ss.total_submissions) t_s, sum(ss.total_accepted_submissions) a_s
from submission_stats ss
group by ss.challenge_id
) ss,
(
select vs.challenge_id,
sum(vs.total_views) t_v, sum(vs.total_unique_views) u_v
from view_stats vs
group by vs.challenge_id
) vs
where cl.contest_id = cn.contest_id
  and ch.college_id = cl.college_id
  and ss.challenge_id (+) = ch.challenge_id
  and vs.challenge_id (+) = ch.challenge_id
group by cn.contest_id, cn.hacker_id, cn.name
having sum(t_s) > 0 or sum(a_s) > 0 or sum(t_v) > 0 or sum(u_v) > 0
order by cn.contest_id;
