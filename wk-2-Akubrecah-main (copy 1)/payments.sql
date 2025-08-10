-- Payment Table
CREATE TABLE payments (
    checkNumber VARCHAR(50) PRIMARY KEY,
    paymentDate DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO payments (checkNumber, paymentDate, amount) VALUES
('HQ336336', '2023-10-05', 6066.78),
('JM555205', '2023-09-15', 14571.44),
('OM314933', '2023-10-01', 1676.14),
('BO864823', '2023-09-28', 3877.55);
