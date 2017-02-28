/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select c1.submission_date, max_count, c1.hacker_id, name from (
select submission_date, hacker_id, row_number() over (partition by submission_date order by s desc, hacker_id) r from (
select submission_date, hacker_id, count(*) s
from submissions
group by submission_date, hacker_id)) c1,
hackers c2,
(select submission_date, count(*) max_count from (
select submission_date, hacker_id, count(*) over (partition by hacker_id order by submission_date range unbounded preceding) sm_count, 
submission_date - date '2016-02-29' days
from (
select submission_date, hacker_id from submissions group by submission_date, hacker_id))
where sm_count = days
group by submission_date) c3
where c1.hacker_id = c2.hacker_id and c1.submission_date = c3.submission_date and r = 1
order by 1;
