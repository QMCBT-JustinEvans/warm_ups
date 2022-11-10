USE employees;
SELECT dept_name, AVG(salary)
FROM employees
LEFT JOIN dept_emp USING (emp_no)
LEFT JOIN departments USING (dept_no)
LEFT JOIN salaries USING (emp_no)
WHERE salaries.to_date LIKE '9999%'
AND dept_emp.to_date LIKE '9999%'
GROUP BY (dept_name)