-- Suppose you want to access limited data
-- or you want to display limited data on specific page
-- then LIMIT statement will act here

USE sql_store;

SELECT *
FROM customers
LIMIT 6,3;

-- We are trying to disply the customer details from 7 to 9, only 3
-- 6 is telling wre to start
-- 3 is telling hwo many