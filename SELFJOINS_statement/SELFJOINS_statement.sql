-- Some times you might need to see important details in a database
-- For instance in HR database you want to know the list of employees under a 
-- certain manager, then, you can join the information inside the same table
-- for instance

USE sql_hr;

SELECT 
	empl.employee_id,
	empl.first_name,
    mag.first_name AS manager
FROM employees empl
JOIN employees mag ON 
	empl.reports_to = mag.employee_id;
    
-- In the output you will obeserve that we have only one manager

