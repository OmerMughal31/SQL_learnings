USE sql_store;
 -- In database design we have specified that the unique ID should be generated automatically
-- First name
-- Laste name
-- Date of birth
-- His phone number is not known so we have written none however it could be DEFAULT as we have said the defalt = null in this case
INSERT INTO customers
VALUES (
	DEFAULT,
	"John",
    "Cena", 
    "1980-01-01", 
    NULL, 
    "address",
    "city",
    "LA",
    7000)