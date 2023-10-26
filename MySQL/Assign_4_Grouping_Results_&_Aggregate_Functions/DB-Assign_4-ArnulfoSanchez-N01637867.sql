--Arnulfo Sanchez	ASSIGNMENT 4 GROUPING RESULTS
--Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
--A
SELECT MIN(price) FROM `stock_items`;
--B
SELECT MAX(inventory) FROM `stock_items`;

-- 2
--A
SELECT role, COUNT(role) FROM `employees` GROUP BY role;
--B
SELECT role, COUNT(role) AS "# of employees", COUNT(phone) AS "# of phone numbers" FROM `employees` GROUP BY role;

-- 3
--A
SELECT category AS "Mammals", COUNT(category) AS "Items" FROM stock_items GROUP BY category HAVING NOT category = "Piscine";
--B
SELECT SUM(inventory) AS "In stock", category AS "Animal" FROM `stock_items` GROUP by category ORDER BY SUM(inventory);
--C
SELECT MAX(price) AS "Highest price", category AS "Category" FROM `stock_items` GROUP BY category ORDER BY MAX(price) DESC;
--D
SELECT MAX(price) AS "Highest price", category AS "Category" FROM `stock_items` GROUP BY category HAVING MAX(price) > 50 ORDER BY MAX(price) DESC;