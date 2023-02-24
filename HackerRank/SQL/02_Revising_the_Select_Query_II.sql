# Query the NAME field for all American cities in the CITY table
# with populations larger than 120000. 
# The CountryCode for America is USA.

USE world;
SELECT Name FROM world.city
WHERE CountryCode = 'USA' AND Population > 120000