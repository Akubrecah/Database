-- Employees Table
CREATE TABLE employees (
    employeeNumber INT PRIMARY KEY,
    lastName VARCHAR(50),  -- Changed to match INSERT
    firstName VARCHAR(50), -- Changed to match INSERT
    email VARCHAR(50),
    jobTitle VARCHAR(50)   -- Removed trailing comma
);

INSERT INTO employees (employeeNumber, lastName, firstName, email, jobTitle) VALUES
(1056, 'Powel', 'Mwenesi', 'powelmwenesi@gmail.com', 'Sales Rep'),
(1076, 'Frankline', 'Mido', 'frankmido@gmail.com', 'Sales Rep'),
(1088, 'Eldon', 'Egesa', 'egesaeldon@gmail.com', 'Sales Manager'),
(1102, 'Elvis', 'Kipyator', 'kipelvis@gmail.com', 'Sales Rep');
