-- Being a developer, you usually communicate in between the various databases then
-- conventinal ways could not help you in joining the data after retrieval
-- Hypothetically, suppose that we don't have product table in sql_store
-- So, we can join tables from sql_inventory to sql_store

USE sql_store;
SELECT *
FROM order_items -- We know that product IDs will be same so we can use them to retieve data
JOIN sql_inventory.products ON
	order_items.product_id = sql_inventory.products.product_id;