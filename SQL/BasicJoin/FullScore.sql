/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/full-score/problem
difficulty: medium
dbms: mysql
*/

SELECT h.hacker_id, h.name FROM Hackers h
JOIN Submissions s ON s.hacker_id = h.hacker_id
JOIN Challenges c ON s.challenge_id = c.challenge_id
JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.challenge_id) > 1
ORDER BY COUNT(s.challenge_id) DESC, h.hacker_id ASC;
