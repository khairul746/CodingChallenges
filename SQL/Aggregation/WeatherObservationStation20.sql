/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/weather-observation-station-20/problem
difficulty: medium
dbms: mysql
*/

WITH RANKED AS (
    SELECT
        DISTINCT LAT_N,
        ROW_NUMBER() OVER(ORDER BY LAT_N) AS RN,
        COUNT(*) OVER() AS CNT
    FROM STATION
)

SELECT ROUND(AVG(LAT_N), 4) AS MEDIAN
FROM RANKED
WHERE RN IN (FLOOR((CNT + 1) / 2), CEILING((CNT + 1) / 2));
