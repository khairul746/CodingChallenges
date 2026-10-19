/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/weather-observation-station-15/problem
difficulty: easy
dbms: mysql
*/

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;
