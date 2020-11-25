-- Write down the union statement such that 
-- 		You extract the customer points and rate them as Gold silver and bronze ones

USE sql_store;

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    c.points,
    "Bronze" AS type
FROM customers c
WHERE c.points <= 1000

UNION

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    c.points,
    "Silver" AS type
FROM customers c
WHERE c.points <= 2000 AND c.points >=1001

UNION

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    c.points,
    "Gold" AS type
FROM customers c
WHERE c.points BETWEEN 2001 AND 4000

ORDER BY first_name
