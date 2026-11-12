/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/placements/problem
difficulty: medium
dbms: mysql
*/

SELECT S.NAME FROM STUDENTS S
JOIN FRIENDS F ON F.ID = S.ID
JOIN PACKAGES P_SELF ON P_SELF.ID = S.ID
JOIN PACKAGES P_FRIEND ON P_FRIEND.ID = F.FRIEND_ID
WHERE P_FRIEND.SALARY > P_SELF.SALARY
ORDER BY P_FRIEND.SALARY;
