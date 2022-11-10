USE employees;
SELECT AVG(salary), STD(salary)
FROM salaries
WHERE to_date LIKE '9999%';


