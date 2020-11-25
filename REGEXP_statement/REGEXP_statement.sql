-- REGEXP is the short form of regular expression where
-- REGEXP pose the same functionality that LIKE poses with some extras

SELECT *
FROM customers
WHERE last_name REGEXP "field|mac|rose"; -- here the position of strings could be any

-- However, "^" specifies that the string should be start with specific charactors
SELECT *
FROM customers
WHERE last_name REGEXP "^field|mac|rose"; -- No output with field will come up because we have no enty for it

SELECT *
FROM customers
WHERE last_name REGEXP "field$|mac|rose"; -- $ sign tell the ending of string or number

-- So, in regular expressions there is no need of "%" signs

-- Suppose we want the combination of two words such as ge, ie, me etc
SELECT *
FROM customers
WHERE last_name REGEXP "[gim]e";
-- [] brackets will inculde every single charactor or digit which is unique

-- What about the range of charactors
SELECT *
FROM customers
WHERE last_name REGEXP "[a-h]e";

-- Simple!!!
-- ^ represents beginning
-- $ represents the ending
-- | and & represnts the logical operator
-- [] special arrangements
-- [-] special arrangement range