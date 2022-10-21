USE world;

SELECT DISTINCT cl.language 
FROM country c
JOIN countrylanguage cl ON c.Code = cl.CountryCode
JOIN city ci ON ci.CountryCode =c.Code
WHERE ci.Name = 'Santa Monica';
