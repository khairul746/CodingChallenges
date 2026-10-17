/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/binary-search-tree-1/problem
difficulty: medium
dbms: mysql
*/

WITH DATA AS(
    SELECT L.N AS NODE, L.P AS PARENT, R.N AS CHILD
    FROM BST L
    LEFT JOIN BST R ON L.N=R.P
)
SELECT DISTINCT NODE,
    CASE
        WHEN PARENT IS NULL THEN 'Root'
        WHEN CHILD IS NULL THEN 'Leaf'
        ELSE 'Inner'
    END
FROM DATA
ORDER BY NODE;
