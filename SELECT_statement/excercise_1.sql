-- Return all products
--	name
-- 	unit price
-- 	new price (unitprice * 1.1)

USE sql_store;
SELECT
	name,
    unit_price,
    (unit_price * 1.1) AS new_price
FROM products;
    
