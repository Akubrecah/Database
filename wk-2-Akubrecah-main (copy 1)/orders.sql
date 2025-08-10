-- Orders Table
CREATE TABLE orders (
    orderNumber INT PRIMARY KEY,
    orderDate DATE,
    requiredDate DATE,
    status VARCHAR(20)
);

INSERT INTO orders (orderNumber, orderDate, requiredDate, status) VALUES
(10100, '2023-10-01', '2023-10-10', 'In Process'),
(10101, '2023-10-03', '2023-10-12', 'In Process'),
(10102, '2023-09-28', '2023-10-05', 'Shipped'),
(10103, '2023-10-05', '2023-10-15', 'In Process');
