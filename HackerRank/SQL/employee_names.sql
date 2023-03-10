/*
Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order.
Input Format
*/

USE employees;
SELECT last_name FROM employees
ORDER BY last_name ASC