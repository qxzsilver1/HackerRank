
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT h.hacker_id, h.name, SUM(score) score FROM ( SELECT h.hacker_id, s.challenge_id, MAX(s.score) score
      FROM Hackers h
      JOIN Submissions s
        ON h.hacker_id = s.hacker_id
    WHERE s.score > 0
  GROUP BY h.hacker_id, s.challenge_id
  ORDER BY h.hacker_id) m JOIN Hackers h ON m.hacker_id = h.hacker_id WHERE score > 0 
  GROUP BY h.hacker_id, h.name 
  ORDER BY score DESC, h.hacker_id ASC;
