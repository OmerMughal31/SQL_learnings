-- For instance youi want to sort your data or want to explore your data
-- Then you could do it with ORDER BY statement. For example

USE sql_store;

SELECT *
FROM customers
ORDER BY first_name;

-- Suppose you are looking for name of custromers hich i sstarting with X
-- and you want to organize them at the same time wrt thier state
SELECT *
FROM customers
ORDER BY first_name DESC, state ASC;
-- First customers will be arranged wrt fist_names in DESC order
-- then, states of every group of customers will be arranged in ASC order

-- Now if you want to specify the column names as
SELECT first_name, state
FROM customers
ORDER BY state DESC, first_name ASC;
-- First states will be arranged wrt fist_names in DESC order
-- then, first_names of every group of customers will be arranged in ASC order