CREATE DATABASE Co_db;
USE Co_db;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Amit', 'Delhi'),
(2, 'Neha', 'Mumbai'),
(3, 'Raj', 'Kolkata'),
(4, 'Priya', 'Bangalore');
INSERT INTO orders (order_id, customer_id, product) VALUES
(101, 1, 'Laptop'),
(102, 2, 'Phone'),
(103, 1, 'Mouse'),
(104, 4, 'Keyboard');  
SELECT * FROM customers;
SELECT * FROM orders;
SELECT c.name, c.city, o.product
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.name, c.city, o.product
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.name, c.city, o.product
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.name, c.city, o.product
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
UNION
SELECT c.name, c.city, o.product
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
