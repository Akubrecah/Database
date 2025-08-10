-- DATABASE

DROP DATABASE IF EXISTS assignment_db;
CREATE DATABASE assignment_db;
USE assignment_db;

-- TABLE: payments

CREATE TABLE payments (
    checkNumber VARCHAR(50),
    paymentDate DATE,
    amount DECIMAL(10,2)
);

INSERT INTO payments (checkNumber, paymentDate, amount)
VALUES 
('HQ336336', '2025-10-05', 6066.78),
('JM555205', '2025-09-15', 14571.44),
('OM314933', '2025-10-01', 1676.14),
('BO864823', '2025-09-28', 3877.55);


-- TABLE: orders

CREATE TABLE orders (
    orderDate DATE,
    requiredDate DATE,
    status VARCHAR(50)
);

INSERT INTO orders (orderDate, requiredDate, status)
VALUES 
('2025-10-01', '2025-10-10', 'In Process'),
('2025-10-03', '2025-10-12', 'In Process'),
('2025-09-28', '2025-10-05', 'Shipped'),
('2025-10-05', '2025-10-15', 'In Process');

-- TABLE: employees

CREATE TABLE employees (
    employeeNumber INT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    jobTitle VARCHAR(50)
);

INSERT INTO employees (employeeNumber, firstName, lastName, email, jobTitle)
VALUES 
(1056, 'Mwenesi', 'Powel', 'powelmwenesi@gmail.com', 'Sales Rep'),
(1076, 'Mido', 'Frankline', 'frankmido@gmail.com', 'Sales Rep'),
(1088, 'Egesa', 'Eldon', 'egesaeldon@gmail.com', 'Sales Manager'),
(1102, 'Kipyator', 'Elvis', 'kipelvis@gmail.com', 'Sales Rep');

-- TABLE: offices

CREATE TABLE offices (
    officeCode INT,
    city VARCHAR(50),
    phone VARCHAR(50),
    addressLine1 VARCHAR(100),
    country VARCHAR(50),
    postalCode VARCHAR(15),
    territory VARCHAR(10)
);

INSERT INTO offices (officeCode, city, phone, addressLine1, country)
VALUES 
(1, 'Nairobi', '+254 739 926 767', '100 Nairobi', 'KENYA'),
(2, 'Eldoret', '+254 791 497 858', '1550 Eldoret', 'KENYA'),
(3, 'Kapenguria', '+254 719 299 900', '523 Kapenguria', 'KENYA');

-- TABLE: products

CREATE TABLE products (
    productName VARCHAR(100),
    quantityInStock INT,
    buyPrice DECIMAL(10,2)
);

INSERT INTO products (productName, quantityInStock, buyPrice)
VALUES 
('Quantum Server Node X9000', 7933, 9570.00),
('Neural AI Processor 1300', 7305, 9858.00),
('Cybersecure Router 1100i', 6625, 6899.00),
('Eagle Edge Computing Unit', 5582, 9102.00),
('Alpha Quantum Workstation', 3252, 8568.00),
('Delta 16-Core Neural Engine', 6791, 10342.00);

-- ASSIGNMENT QUERIES
-- Q1: Retrieve checkNumber, paymentDate, and amount
SELECT checkNumber, paymentDate, amount
FROM payments;

-- Q2: Orders 'In Process' sorted by latest orderDate first
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- Q3: Sales Reps sorted by employeeNumber descending
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- -- Q4: All data from offices
SELECT *
FROM offices;

-- Q5: Product name and quantity in stock, sorted by buyPrice ascending, limit to 5
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
