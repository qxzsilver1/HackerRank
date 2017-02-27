/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select h.hacker_id, h.name
from hackers h, difficulty d, challenges c, submissions s
where s.hacker_id = h.hacker_id
  and c.challenge_id = s.challenge_id
  and d.difficulty_level = c.difficulty_level
  and s.score = d.score
group by h.hacker_id, h.name
having count(*) > 1
order by count(*) desc, h.hacker_id;
