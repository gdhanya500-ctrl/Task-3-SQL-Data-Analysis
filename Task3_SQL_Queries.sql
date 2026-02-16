
USE Ecommerce_SQL_Database;

SELECT * FROM Customers;
SELECT * FROM Products
WHERE price > 10000;
SELECT * FROM Products
ORDER BY price DESC;
SELECT customer_id,
SUM(quantity) AS Total_Products
FROM Orders
GROUP BY customer_id;
SELECT Customers.name, Products.product_name
FROM Orders
INNER JOIN Customers
ON Orders.customer_id = Customers.customer_id
INNER JOIN Products
ON Orders.product_id = Products.product_id;
SELECT Customers.name, Orders.order_id
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
SELECT Customers.name, Orders.order_id
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
SELECT Customers.name, Orders.order_id
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
SELECT Customers.name, Orders.order_id
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
SELECT Customers.name, Orders.order_id
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
SELECT Customers.name, Orders.order_id
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
SELECT Customers.name, Orders.order_id
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
SELECT name FROM Customers
WHERE customer_id IN
(SELECT customer_id FROM Orders);
SELECT AVG(price) AS Average_Price
FROM Products;
CREATE VIEW Customer_Orders AS
SELECT Customers.name, Products.product_name
FROM Orders
JOIN Customers
ON Orders.customer_id = Customers.customer_id
JOIN Products
ON Orders.product_id = Products.product_id;
SELECT * FROM Customer_Orders;
CREATE INDEX idx_customer
ON Orders(customer_id);
