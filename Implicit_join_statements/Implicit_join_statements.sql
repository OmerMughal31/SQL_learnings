-- The join statements can be replaced by Implicit join staments. For example

USE sql_store;

SELECT *
FROM orders o
JOIN customers c ON
	o.customer_id = c.customer_id;
    
-- When this query is run then we get order tabels joined with customer tables

-- Well, this can be done explicitly such as

SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

-- When you will run this query, the, you will observe that you got the same results.
-- But JOIN statement is better