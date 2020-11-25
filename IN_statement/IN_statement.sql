-- Sometimes you need the values which should obey certain conditions
-- instead using multiple logical operators you can use this

SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA');

-- Or everthing which is not in these staes then

SELECT *
FROM customers
WHERE state NOT IN ("VA", "FL", "GA");