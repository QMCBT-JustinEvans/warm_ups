/*
Query all attributes of every Japanese city in the CITY table. 
The COUNTRYCODE for Japan is JPN.
*/

USE world;
SELECT * FROM city
WHERE CountryCode = 'JPN'