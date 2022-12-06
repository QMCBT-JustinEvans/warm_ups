# Using the Employees database, find all the titles ever held by all current employees with the first name Aamod.

USE employees;
SELECT DISTINCT title
FROM employees
LEFT JOIN titles USING (emp_no)
LEFT JOIN salaries USING (emp_no)
WHERE salaries.to_date LIKE '9999%' AND first_name = 'Aamod'