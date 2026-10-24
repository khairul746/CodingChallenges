/*
====================
----INFORMATION-----
====================
source : https://www.hackerrank.com/challenges/african-cities/problem
difficulty: easy
dbms: mysql
*/

SELECT CITY.NAME FROM CITY
INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE CONTINENT = 'Africa';
