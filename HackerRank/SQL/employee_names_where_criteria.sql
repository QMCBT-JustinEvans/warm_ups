/*
Write a query that prints a list of employee names (i.e.: the name attribute) 
for employees in Employee having a salary greater than  $2000 per month 
who have been employees for less than 10 months. 
Sort your result by ascending name.
*/

USE employees;
SELECT DISTINCT(last_name) FROM employees
LEFT JOIN salaries USING (emp_no)
WHERE salary > 2000 and (to_date - from_date) < 300
GROUP BY last_name
ORDER BY last_name ASC

