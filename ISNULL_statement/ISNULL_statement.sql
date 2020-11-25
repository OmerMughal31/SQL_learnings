-- Soemtimes we are missing some values in our database
-- for instance the phone numbers of the customers
-- Now you need to find out which customers, you could do it like tis

USE sql_store;

SELECT *
FROM customers
WHERE phone IS NULL;

-- Or vice versa for laternative query when details are available
SELECT *
FROM customers
WHERE phone IS NOT NULL;
