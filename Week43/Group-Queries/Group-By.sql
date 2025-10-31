use world;
SELECT c.CountryCode, COUNT(*) as AntallByer
FROM world.city c
WHERE Population > 100000
GROUP BY CountryCode
HAVING AntallByer > 100
ORDER BY AntallByer DESC;


SELECT c.CountryCode, SUM(Population) as TotalByBefolkning
FROM world.city c
GROUP BY CountryCode
HAVING TotalByBefolkning > 5000000
ORDER BY TotalByBefolkning DESC;

DROP DATABASE IF EXISTS testDB;
CREATE DATABASE testDB;

use testDB;

DROP TABLE IF EXISTS testtable1;
CREATE TABLE testtable1(
    ID INT,
    Navn VARCHAR(50),
    TEST VARCHAR(50)
);

