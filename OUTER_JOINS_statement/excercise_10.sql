-- Join the customer table with order table such that you get the output
-- 	Orde id
-- 	order details
-- 	Customer details

USE sql_store;

SELECT 
	o.order_id,
    o.order_date,
    c.customer_id,
    c.first_name,
    c.last_name,
    oi.quantity,
    oi.unit_price,
    p.name AS 'product name'
    
FROM orders o
RIGHT OUTER JOIN customers c ON
	o.customer_id = c.customer_id
RIGHT OUTER JOIN order_items oi ON
	o.order_id = oi.order_id
RIGHT OUTER JOIN products p ON
	oi.product_id = p.product_id;