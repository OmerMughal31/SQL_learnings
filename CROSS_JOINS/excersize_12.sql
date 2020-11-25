-- DO a cross join betweemn shipper and products
-- 		using th eimplicit syntax
-- 		and the using the explicit syntax

USE sql_store;

-- Implecit syntax
SELECT *
FROM shippers sh, products p
ORDER BY sh.name;

-- Explicit syntax

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh
CROSS JOIN products p
ORDER BY sh.name