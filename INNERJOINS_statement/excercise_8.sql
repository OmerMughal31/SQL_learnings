-- Join the order_items with products table such that
-- order_id and product_id from order_item are followed by product_name and quantity
-- with unit price

USE sql_store;

SELECT  order_id, 
	products.product_id, 
    products.name, 
    quantity_in_stock,
	products.unit_price
FROM products
JOIN order_items ON 
	products.product_id = order_items.product_id;