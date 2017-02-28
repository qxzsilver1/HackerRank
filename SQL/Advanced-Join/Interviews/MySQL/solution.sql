/*
Enter your query here.
*/
SELECT CT.contest_id, 
       CT.hacker_id, 
       CT.name, 
       Sum(ts), 
       Sum(tas), 
       Sum(tv), 
       Sum(tuv) 
FROM   contests CT 
       INNER JOIN colleges AS CL 
               ON CL.contest_id = CT.contest_id 
       INNER JOIN challenges AS CH 
               ON CH.college_id = CL.college_id 
       LEFT JOIN (SELECT challenge_id, 
                         Sum(total_submissions)          AS TS, 
                         Sum(total_accepted_submissions) AS TAS 
                  FROM   submission_stats 
                  GROUP  BY challenge_id) S 
              ON S.challenge_id = CH.challenge_id 
       LEFT JOIN (SELECT challenge_id, 
                         Sum(total_views)        AS TV, 
                         Sum(total_unique_views) AS TUV 
                  FROM   view_stats 
                  GROUP  BY challenge_id) V 
              ON V.challenge_id = CH.challenge_id 
GROUP  BY CT.contest_id 
ORDER  BY CT.contest_id;
