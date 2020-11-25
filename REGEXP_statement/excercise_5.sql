-- Get the customer whose
-- 		first names are ELKA or AMBUR
USE sql_store;

SELECT *
FROM customers
WHERE first_name REGEXP "^ELKA|^AMBUR";

-- 		Last names end with EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP "EY$|ON$";

-- Last names start with MY or contains select
SELECT *
FROM customers
WHERE last_name REGEXP "SE|^MY";

-- Last names contain B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP "B[RU]";