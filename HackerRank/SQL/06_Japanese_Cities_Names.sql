/*
Query the names of all the Japanese cities in the CITY table. 
The COUNTRYCODE for Japan is JPN.
*/

USE world;
SELECT Name FROM city
WHERE CountryCode = 'JPN'