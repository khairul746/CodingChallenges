/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/the-report/problem
difficulty: medium
dbms: mysql
*/

SELECT 
    CASE WHEN Grade >= 8 THEN NAME ELSE 'NULL' END AS Name,
    Grade, Marks 
FROM Students INNER JOIN Grades 
ON Marks >= Min_Mark AND Marks <= Max_Mark
ORDER BY Grade DESC, Name ASC, Marks ASC;
