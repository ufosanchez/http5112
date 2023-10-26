--Arnulfo Sanchez	ASSIGNMENT 3 REFINING DATA
--Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
--A
SELECT * FROM `employees` WHERE role = "Manager" OR role = "Assistant";
--B
SELECT * FROM `stock_items` WHERE category = "Piscine" AND inventory < 24;

-- 2
--A
SELECT item, price, category FROM `stock_items` WHERE item LIKE "%cage";
--B
SELECT first_name, last_name, role FROM `employees` WHERE role = "Sales" AND first_name LIKE "F%";

-- 3
--A
SELECT * FROM `stock_items` WHERE id BETWEEN 1010 AND 1015;
--B
SELECT item, price, category FROM `stock_items` WHERE category = "Canine" AND price BETWEEN 10 AND 20;

-- 4
--A
SELECT first_name, last_name, role AS "Job Title", phone FROM `employees` ORDER BY last_name;
--B
SELECT id, item, price, inventory FROM `stock_items` WHERE category = "Murine" AND inventory > 20 ORDER BY price DESC;
