--Arnulfo Sanchez	ASSIGNMENT 5 JOINING TABLES
--Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--1 
-- A
SELECT s.date, i.item FROM sales s JOIN stock_items i ON s.item = i.id WHERE i.id = 1014;
-- B
SELECT e.phone, i.id, i.category, i.item FROM sales s JOIN stock_items i ON s.item = i.id JOIN employees e ON s.employee = e.id WHERE i.category = "Feline" AND i.item = "Water dish";

--2
-- A
SELECT s.date, CONCAT(e.first_name, " ", e.last_name) AS "Employee Name", s.item FROM employees e JOIN sales s ON e.id = s.employee WHERE e.id = 111;
-- B
SELECT CONCAT(e.first_name, " ", e.last_name) AS "Employee Name", e.sin AS "SIN", e.role, i.item 
FROM stock_items i RIGHT JOIN sales s ON i.id = s.item RIGHT JOIN employees e ON s.employee = e.id
WHERE e.sin LIKE "258%" OR e.sin LIKE "456%" OR e.sin LIKE "753%";

--3
-- A
SELECT s.date, s.item, e.first_name FROM sales s LEFT JOIN employees e ON s.employee = e.id WHERE s.date BETWEEN "2021-06-12" AND "2021-06-18";
-- B
SELECT CONCAT(e.first_name, " ", e.last_name) AS "Sales Person", COUNT(s.employee) AS "# of Sales" 
FROM employees e LEFT JOIN sales s ON e.id = s.employee 
GROUP BY CONCAT(e.first_name, " ", e.last_name)
ORDER BY COUNT(s.employee) DESC;

--4
-- A
SELECT s.date, i.item, i.price, i.category, e.first_name 
FROM sales s LEFT JOIN employees e ON s.employee = e.id LEFT JOIN stock_items i ON s.item = i.id
WHERE e.first_name = "Farud" AND e.last_name = "Said";
-- B
SELECT DISTINCT s.item AS "item sale", i.id, i.item, i.price, i.category
FROM stock_items i LEFT JOIN sales s ON i.id = s.item    
ORDER BY id;