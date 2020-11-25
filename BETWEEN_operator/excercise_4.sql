-- GEt the customers whose
-- 		address contains TRAIL or AVENUE

USE sql_store;

SELECT *
FROM customers
WHERE address LIKE ("%TRAIL%") OR 
	address LIKE ("%AVENUE%");

-- 		phone numbers end with 9

SELECT *
FROM customers
WHERE phone LIKE "%9";