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

INSERT INTO payments VALUES
('CHK-001', '2025-07-01', 120.50),
('CHK-002', '2025-07-02', 300.00),
('CHK-003', '2025-07-03', 450.75);

-- TABLE: orders

CREATE TABLE orders (
    orderDate DATE,
    requiredDate DATE,
    status VARCHAR(50)
);

INSERT INTO orders VALUES
('2025-07-05', '2025-07-12', 'In Process'),
('2025-06-20', '2025-06-25', 'Shipped'),
('2025-07-08', '2025-07-15', 'In Process');

-- TABLE: employees

CREATE TABLE employees (
    employeeNumber INT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    jobTitle VARCHAR(50)
);

INSERT INTO employees VALUES
(1001, 'Alice', 'Smith', 'alice@company.com', 'Sales Rep'),
(1002, 'Bob', 'Johnson', 'bob@company.com', 'Sales Rep'),
(1003, 'Charlie', 'Brown', 'charlie@company.com', 'Manager');

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

INSERT INTO offices VALUES
(1, 'New York', '+1 212 555 1234', '123 5th Ave', 'USA', '10001', 'NA'),
(2, 'London', '+44 20 7946 0958', '456 Oxford St', 'UK', 'W1D 1BS', 'EMEA');

-- ================================
-- TABLE: products
-- ================================
CREATE TABLE products (
    productName VARCHAR(100),
    quantityInStock INT,
    buyPrice DECIMAL(10,2)
);

INSERT INTO products VALUES
('Laptop Pro', 50, 1200.00),
('USB Cable', 500, 5.99),
('Wireless Mouse', 150, 25.00),
('Keyboard', 200, 45.00),
('Monitor 27"', 75, 300.00),
('Headphones', 180, 75.00);

-- ================================
-- ASSIGNMENT QUERIES
-- ================================

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

-- Q4: All data from offices
SELECT *
FROM offices;

-- Q5: Product name and quantity in stock, sorted by buyPrice ascending, limit to 5
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
