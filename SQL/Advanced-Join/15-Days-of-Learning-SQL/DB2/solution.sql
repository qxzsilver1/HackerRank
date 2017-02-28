
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select A.submission_date,A.At_Least_One_Count,B.Hacker_ID,H.Name
from
(select count(1) As At_Least_One_Count,submission_date from ( select hacker_id, submission_date, row_number() over (partition by hacker_id order by submission_date) as submission_running_count
from Submissions group by hacker_id, submission_date order by submission_date) A
where submission_running_count=(DAYS (submission_date) - DAYS (DATE('2016-03-01')))+1
group by submission_date order by submission_date) A, (select submission_date,min(hacker_id) as hacker_id from ( select hacker_id, submission_date, count(1) As submission_count, Dense_rank() over(partition by submission_date order by count(1) desc) As submission_count_rank
from Submissions group by hacker_id, submission_date order by submission_date,submission_count desc,submission_count_rank) A
where submission_count_rank=1
group by submission_date order by submission_date) B, Hackers H
where A.submission_date=B.submission_date and B.Hacker_id=H.Hacker_id
order by submission_date;
