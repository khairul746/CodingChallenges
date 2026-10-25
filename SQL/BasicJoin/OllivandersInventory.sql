/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
difficulty: medium
dbms: mysql
*/

WITH RankedWands AS (
    SELECT 
        w.id, 
        wp.age, 
        w.coins_needed, 
        w.power,
        ROW_NUMBER() OVER (PARTITION BY wp.age, w.power ORDER BY w.coins_needed ASC) as ranking
    FROM Wands w
    JOIN Wands_Property wp ON w.code = wp.code
    WHERE wp.is_evil = 0 
)
SELECT id, age, coins_needed, power
FROM RankedWands
WHERE ranking = 1
ORDER BY power DESC, age DESC;
