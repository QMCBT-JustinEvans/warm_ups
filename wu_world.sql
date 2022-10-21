# Using the world database: How many different countries are in each region?

SELECT * FROM country c;

SELECT c.Region, COUNT(c.Code) count_country
FROM country c
GROUP BY c.Region
ORDER BY count_country;
