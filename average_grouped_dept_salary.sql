#-- What is the current average salary for each of the following departments
#-- groups: R&D, Sales & Marketing, Prod & QM, Finance & HR, Customer Service?

USE employees;

SELECT
	CASE
		WHEN d.dept_name IN ('Research', 'Development') THEN 'R&D'
        WHEN d.dept_name IN ('Sales', 'Marketing') THEN 'Sales & Marketing'
        WHEN d.dept_name IN ('Production', 'Quality Management') THEN 'Prod & QM'
        WHEN d.dept_name IN ('Finance', 'Human Resources') THEN 'Finance & HR'
        WHEN d.dept_name IN ('Customer Service') THEN 'CS'
	END AS dept_group, AVG(salary)
FROM departments d
JOIN dept_emp de USING(dept_no)
JOIN salaries s USING(emp_no)
WHERE s.to_date > NOW() AND de.to_date > NOW()
GROUP BY dept_group;

#----------------------------------------------------------------------------------#

USE employees;
SELECT * FROM employees.departments;
SELECT * FROM employees;

SELECT * FROM employees

LEFT JOIN departments USING(dept_no)

SELECT cost_to_customer_per_qty, 
IF(cost_to_customer_per_qty <= 1, 'Cheap',
	IF(cost_to_customer_per_qty >= 5, 'High-end',
    IF(cost_to_customer_per_qty > 1 < 5, 'Mid-range', "Not in Range"))) AS Result FROM customer_purchases;
    
SELECT *,
	CASE
		WHEN cost_to_customer_per_qty <= 1 THEN 'Cheap'
		WHEN cost_to_customer_per_qty >= 5 THEN 'High-end'
		WHEN cost_to_customer_per_qty > 1 AND cost_to_customer_per_qty < 5 THEN 'Mid-range'
	END AS price_category
FROM customer_purchases
ORDER BY cost_to_customer_per_qty
    