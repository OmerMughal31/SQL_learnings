-- there are two types of outer joints
-- 	Left joints : Will give the outputs with respect to the table we have selected to pick the columns and put condition
-- 		in JOIN ON to join the columns
-- 	Right jointsWill give the outputs with respect to the table we have selected to reference the columns and put condition
-- 		in JOIN ON to join the columns

-- The main diference in INNER JOIN and OUTER JOIN is that:
-- 			INNER JOIN will give only the outputs where the condition is true
-- 			OUTER JOIN will give the output by joining all the values in table by specifiying NULL where the desired condition is not true
-- For example:

USE sql_store;

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers c
LEFT OUTER  JOIN orders o ON
	c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- Now see the same example for right join
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers c
LEFT OUTER JOIN orders o ON
	c.customer_id = o.customer_id;

-- If you observe the outputs then, you will see that your values have been joined wrt the orders table