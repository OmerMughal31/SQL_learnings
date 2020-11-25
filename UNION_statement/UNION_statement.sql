-- You have learnt about the JOIN statements where the tabels have been combined
-- in column
-- Thsese colums can be combined with respect to rows
-- by using union
-- How? Let me show you an example
-- you want to see which orders are in 2019 and make them as active and older ones
-- Archived

USE sql_store;

SELECT 
	o.order_id,
    o.order_date,
    "Active" AS 'status'
FROM orders o
WHERE o.order_date >= "2019-01-01"
-- union here will joion these two queries (The columns numbers from tables should be equal)
UNION

SELECT 
	o.order_id,
    o.order_date,
    "Archive" AS 'status'
FROM orders o
WHERE o.order_date < "2019-01-01"
