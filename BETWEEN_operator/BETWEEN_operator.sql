-- Simple Example
SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 2000;

-- LIKE Operator- Simple Example
SELECT *
FROM customers
WHERE last_name LIKE "b%";

SELECT *
FROM customers
WHERE last_name LIKE "%b%";

SELECT *
FROM customers
WHERE last_name LIKE "brush%";

SELECT *
FROM customers
WHERE last_name LIKE "%y";

-- What about if you want to retrieve data wrt to string of fixed length but common ending
-- heer is an eaample where you want to access the customers with name ending y and
-- string length of 6

SELECT *
FROM customers
WHERE last_name LIKE "_____y"; 
-- Check the output where you will get the 6 alphabet name ending with y

-- AAnother example is 
SELECT *
FROM customers
WHERE last_name LIKE "b____y";  
