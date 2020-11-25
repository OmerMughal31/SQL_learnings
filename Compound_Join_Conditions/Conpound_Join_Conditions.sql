-- Till now, you have done joining only with single columns
-- Sometimes you have to find the item based on its uniqueness which might
-- not possible with single coulumns. So, in this case, if the item
-- is joined br retirving with two or three columns then, it would be a unique
-- data in the database.
-- For instance, in order_item_notes and order_items you have similar data repeated in single columns
-- and interested to retrieve a unique rwos and join the information
-- thyen, you can use logical operator ANN with JOIN ON

USE sql_store;

SELECT *
FROM order_items
JOIN order_item_notes
	ON order_items.order_id = order_item_notes.order_id
    AND order_items.profuct_id = order_item_notes.product_id