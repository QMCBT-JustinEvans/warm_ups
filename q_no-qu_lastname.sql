# Write a query to find the unique last names with a 'q' but not 'qu'.
use employees;
SELECT DISTINCT(last_name) 
FROM employees
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%'
