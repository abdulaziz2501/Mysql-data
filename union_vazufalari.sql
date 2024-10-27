

SELECT first_name || ' ' || last_name AS full_name
FROM students
WHERE first_name LIKE 'A%' OR first_name LIKE 'E%' OR first_name LIKE 'I%' OR first_name LIKE 'O%' OR first_name LIKE 'U%'
UNION
SELECT first_name || ' ' || last_name AS full_name
FROM teachers
WHERE first_name LIKE 'A%' OR first_name LIKE 'E%' OR first_name LIKE 'I%' OR first_name LIKE 'O%' OR first_name LIKE 'U%';

2-topshiriq: 

SELECT first_name || ' ' || last_name AS full_name
FROM students
UNION
SELECT first_name || ' ' || last_name AS full_name
FROM teachers
ORDER BY LENGTH(last_name), last_name;

3-topshiriq: 

SELECT first_name || ' ' || last_name AS full_name, 'student' AS source
FROM students
UNION
SELECT first_name || ' ' || last_name AS full_name, 'teacher' AS source
FROM teachers
ORDER BY source, last_name;

4-topshiriq: 

SELECT first_name || ' ' || last_name AS full_name, id
FROM students
UNION
SELECT first_name || ' ' || last_name AS full_name, id
FROM teachers
ORDER BY id DESC
LIMIT 3;




CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  product TEXT NOT NULL,
  quantity INTEGER NOT NULL
);

CREATE TABLE shipments (
  shipment_id INTEGER PRIMARY KEY,
  product TEXT NOT NULL,
  quantity INTEGER NOT NULL
);

INSERT INTO orders (order_id, product, quantity) VALUES
(1, 'Laptop', 5),
(2, 'Keyboard', 10),
(3, 'Mouse', 15),
(4, 'Monitor', 7),
(5, 'Printer', 3);

INSERT INTO shipments (shipment_id, product, quantity) VALUES
(1, 'Laptop', 5),
(2, 'Keyboard', 8),
(3, 'Mouse', 15),
(4, 'Monitor', 4),
(5, 'Headphones', 6);

INTERSECT

5-topshiriq: 

SELECT product, quantity
FROM orders
INTERSECT
SELECT product, quantity
FROM shipments;

6-topshiriq: 

SELECT o.product, o.quantity AS order_quantity, s.quantity AS shipment_quantity
FROM orders o
JOIN shipments s ON o.quantity = s.quantity
WHERE o.quantity >= 5;

7-topshiriq: 

SELECT o.order_id
FROM orders o
JOIN shipments s ON o.product = s.product AND o.quantity = s.quantity;

8-topshiriq: 

SELECT s.shipment_id
FROM shipments s
JOIN orders o ON s.product = o.product AND s.quantity = o.quantity
ORDER BY s.product;

Except 

9-topshiriq: 

SELECT product
FROM orders
EXCEPT
SELECT product
FROM shipments;

10-topshiriq: 

SELECT product
FROM shipments
EXCEPT
SELECT product
FROM orders
ORDER BY product;

11-topshiriq: 

SELECT order_id
FROM orders
WHERE order_id >= 10
EXCEPT
SELECT order_id
FROM shipments;

12-topshiriq: 

SELECT shipment_id
FROM shipments
WHERE quantity < 5
EXCEPT
SELECT shipment_id
FROM orders;
