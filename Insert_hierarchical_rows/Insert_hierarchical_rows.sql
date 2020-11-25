USE sql_store;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, "2019,01,02", 1);

INSERT INTO order_items
VALUES
	(11, 1, 1, 2.95),
    (12, 1, 1, 3.95)