-- Offices Table
CREATE TABLE offices (
    officeCode INT PRIMARY KEY,
    city VARCHAR(50),
    phone VARCHAR(50),
    addressLine1 VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO offices (officeCode, city, phone, addressLine1, country) VALUES
(1, 'Nairobi', '+254 739 926 767', '100 Nairobi', 'KENYA'),
(2, 'Eldoret', '+254 791 497 858', '1550 Eldoret', 'KENYA'),
(3, 'Kapenguria', '+254 719 299 900', '523 Kapenguria', 'KENYA');
