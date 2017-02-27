/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select h.hacker_id, h.name, count(challenge_id) as cnt
from hackers h join challenges c on h.hacker_id = c.hacker_id
group by h.hacker_id, h.name
having
    count(challenge_id) = (select max(cnt) as mccnt from
        (select hacker_id, count(challenge_id) as cnt
        from challenges c
        group by hacker_id)
    )
    or
    count(challenge_id) in (select ccnt from
        (select hacker_id, count(challenge_id) as ccnt
        from challenges c
        group by hacker_id)
    group by ccnt
    having count(hacker_id) = 1
    )
order by count(challenge_id) desc, h.hacker_id;
