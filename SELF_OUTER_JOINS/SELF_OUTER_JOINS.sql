USE sql_hr;

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
JOIN employees m ON
	e.reports_to = e.employee_id;

-- Upon executing the above query we get the employees list and the name of mangers to whom they are reporting
-- but we don't know the ID of the mager however we know the IDs of the employees
-- the reason is that inner joins don't handle this .
-- So, we can do this via OUTER JOIN using self joining concept
-- Here the solution

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
LEFT JOIN employees m ON
	e.reports_to = m.employee_id

-- se the output to feel and see the difference in the results
