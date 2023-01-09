# Using the employees DB, give me the last name and count of employees that have a last name that starts with SH and ends with Z

USE employees;

SELECT DISTINCT(last_name)
FROM employees
WHERE last_name LIKE 'SH%Z';

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE 'SH%Z'
GROUP BY last_name