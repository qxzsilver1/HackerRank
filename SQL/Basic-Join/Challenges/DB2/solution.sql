
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select h.hacker_id, h.name, count(distinct c.challenge_id)
    from hackers as h
    join challenges as c
      on h.hacker_id = c.hacker_id
group by h.hacker_id, h.name
having count(distinct c.challenge_id) in (select max(cnt)
    from (select count(distinct challenge_id) as cnt
        from challenges
        group by hacker_id)
    union all
    select cnt
    from (select cnt, count(cnt)
        from (select count(distinct challenge_id) as cnt
            from challenges
            group by hacker_id)
        group by cnt
    having count(cnt) = 1))
order by count(distinct c.challenge_id) desc, hacker_id;
