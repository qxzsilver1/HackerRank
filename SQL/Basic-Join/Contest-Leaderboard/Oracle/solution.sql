/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT hacker_id, name, SUM(best) total
FROM (SELECT hacker_id, challenge_id, MAX(score) best
FROM Submissions
GROUP BY hacker_id, challenge_id) e JOIN hackers USING(hacker_id)
GROUP BY hacker_id, name
HAVING SUM(best) > 0
ORDER BY total DESC, hacker_id ASC;
