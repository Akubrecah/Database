-- Q1
SELECT checkNumber, paymentDate, amount
FROM payments;

-- Q2
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- Q3
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- Q4
SELECT *
FROM offices;

-- Q5
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;