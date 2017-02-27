/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT
    H.hacker_id, H.name, S.total
FROM
    Hackers H
    INNER JOIN (
        SELECT A.hacker_id, SUM(A.score) AS total FROM (
            SELECT hacker_id, challenge_id, MAX(score) AS score
            FROM Submissions GROUP BY hacker_id, challenge_id
        ) A GROUP BY A.hacker_id
    ) S ON (S.hacker_id = H.hacker_id AND total > 0)
ORDER BY S.total DESC, hacker_id;
