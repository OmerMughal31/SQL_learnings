-- SELECT statement is used to select the particular database or part of dta base
-- that you want to access. For example
-- command tells that we want to know the details of customers in stor database
SELECT * FROM sql_store.customers;

-- What are the orders that all the customers have placed
SELECT * FROM sql_store.orders;

-- Now lets see how to get data from a table in our database
-- Select your database with USE statement
USE sql_store;

-- SELECT "write down the columns name you want to retieve or * to select all the columns"
SELECT *
-- FROM command helps to select the particular talbel among table or etc.
FROM customers
-- WHERE can give us more filtered results based on specific identity
WHERE customer_id = 1;
-- ORDER BY can give the details for everything matches to our oerder
-- ORDER BY first_name;

