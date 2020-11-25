USE sql_store;

SELECT 
	o.order_id,
    c.first_name
FROM orders o
JOIN customers c ON
	o.customer_id = c.customer_id;
-- the condition in the join statement has the similar column name repeated
-- When we have similar columns in diferent tables then instead of putting so long statements
-- we can use USING statement
SELECT 
	o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id)
-- this simplefied example proides the same information because both orders and customers tables have customer_id column
-- and both orders and shippers have shipper_id column
