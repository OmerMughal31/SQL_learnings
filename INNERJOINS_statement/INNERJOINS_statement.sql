-- Till now we have selected everything form one table
-- In real-time, usually, values have to be retieved from multiple columns
-- Doing so, INNER JOINS are serving statements
-- For example, we want to know the details of the customers who placed some orders

SELECT *
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;
-- because in rational databases ID of a certain data is same in all tables
-- As the output tells us that all columns have been selected because we have said SELECT *

-- If we want to retireve only the names of cunstomers then

SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id;

-- Now the output elaborates the difference
-- Not understood then run both chuncks again