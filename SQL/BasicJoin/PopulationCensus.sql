/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/asian-population/problem
difficulty: easy
dbms: mysql
*/

SELECT SUM(CITY.population) FROM CITY
INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.Continent = 'Asia';
