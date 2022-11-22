SELECT * FROM employees.salaries
WHERE to_date LIKE '9999%'
ORDER BY salary DESC
LIMIT 1, 1;
SELECT * FROM employees.employees
WHERE emp_no = '254466';
SELECT * FROM employees.dept_emp
WHERE emp_no = '254466';
SELECT * FROM employees.departments
WHERE dept_no = 'd007';
SELECT * FROM employees.titles
WHERE emp_no = '254466';