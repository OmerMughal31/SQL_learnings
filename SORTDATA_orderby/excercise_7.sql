-- Access the items to order with ID 2
-- Sort them wrt price in Descending order

USE sql_store;

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price * unit_price DESC;