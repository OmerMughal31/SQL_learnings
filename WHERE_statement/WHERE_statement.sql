-- WHERE statement is used when we need specific information
-- in our database. For example

SELECT *
FROM customers
WHERE points > 2000;

-- what if we want to extract the customers only from varginia
-- then,
-- SELECT DISTINCT state
-- FROM customers;
SELECT *
FROM customers
WHERE state = "VA";

-- What if I need the reversed results, then
SELECT *
FROM customers
WHERE state != "VA";

-- In the results you could see that the customer with ID 2 is not included

-- What about the results where we need customer with certain DOB and Points
SELECT *
FROM customers
WHERE birth_date > "1990-01-01" AND points > 1000