-- Products Table
CREATE TABLE products (
    productCode VARCHAR(15) PRIMARY KEY,
    productName VARCHAR(70),
    quantityInStock SMALLINT,
    buyPrice DECIMAL(10,2)
);

INSERT INTO products (productCode, productName, quantityInStock, buyPrice) VALUES
('S10_1678', 'Quantum Server Node X9000', 7933, 9570.00),
('S10_1949', 'Neural AI Processor 1300', 7305, 9858.00),
('S10_2016', 'Cybersecure Router 1100i', 6625, 6899.00),
('S10_4698', 'Eagle Edge Computing Unit', 5582, 9102.00),
('S10_4757', 'Alpha Quantum Workstation', 3252, 8568.00),
('S10_4962', 'Delta 16-Core Neural Engine', 6791, 10342.00);
