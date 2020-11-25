-- In real time problems we are needed to join multoiple tables
-- for instance, a customer placed an oerder and we want to know that
-- customer name,
-- order placement data,
-- order status

USE sql_store;

SELECT 
    o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name,
	o.order_date,
    os.name AS status
FROM orders o
JOIN customers c ON
	c.customer_id = o.customer_id
JOIN order_statuses os ON
	o.status = os.order_status_id; 