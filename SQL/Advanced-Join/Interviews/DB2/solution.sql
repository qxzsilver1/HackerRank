
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT A.contest_id
     , A.hacker_id
     , A.name
     , SUM(D.TS)
     , SUM(D.TAS)
     , SUM(E.TV)
     , SUM(E.TUV)
FROM Contests A
INNER JOIN Colleges B
 ON A.contest_id = B.contest_id
INNER JOIN Challenges C
 ON B.college_id = C.college_id
LEFT OUTER JOIN (SELECT challenge_id
                      , SUM(total_submissions) AS "TS"
                      , SUM(total_accepted_submissions) AS "TAS"
                 FROM Submission_Stats
                 GROUP BY challenge_id) D
 ON C.challenge_id = D.challenge_id
LEFT OUTER JOIN (SELECT challenge_id
                      , SUM(total_views) AS "TV"
                      , SUM(total_unique_views) AS "TUV"
                 FROM View_Stats
                 GROUP BY challenge_id) E
 ON C.challenge_id = E.challenge_id
GROUP BY A.contest_id
       , A.hacker_id
       , A.name
ORDER BY A.contest_id;
