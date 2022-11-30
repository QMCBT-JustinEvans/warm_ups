# -- Write a query that returns all employee names (previous and current), and a
# -- new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' depending on the
# -- first letter of their last name.


USE employees;

SELECT last_name, first_name,
	CASE 
    WHEN LEFT(last_name, 1) <= 'H' THEN 'A-H'
    WHEN LEFT(last_name, 1) <= 'O' THEN 'I-O'
    WHEN LEFT(last_name, 1) <= 'Z' THEN 'P-Z'
    END AS alpha_group
FROM employees;
