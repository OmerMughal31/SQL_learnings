-- CROSS JOINS are used to connect the every element in column of one table with the everyu column 
-- element in the other table
-- For example

USE sql_store;

SELECT 
	c.first_name AS customer,
	p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name

-- In the output you could see that we can see for instance aal the products that are accociated with Amber
