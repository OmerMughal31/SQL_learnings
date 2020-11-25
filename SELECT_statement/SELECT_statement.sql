-- SELECT Statement is there to call the data (columns) from the database
-- It will give us what we have asked form it. Fo example
SELECT 
	first_name, 
    last_name, 
    points, 
    (points + 10) * 100 AS discount_factor
    -- if you need to give the name to new column then us AS like above
FROM customers;

SELECT DISTINCT state
FROM customers ;