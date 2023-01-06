# Exercise: Using the employees DB find the name of all departments currently managed by women.
USE employees;
SELECT first_name, last_name, gender, dept_name FROM employees
LEFT JOIN dept_manager USING(emp_no)
LEFT JOIN departments USING(dept_no)
WHERE to_date LIKE '9999%' and gender = 'F'