-- Actors Table

CREATE TABLE Actors(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT
);

-- Movies Table

CREATE TABLE Movies(
    id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    year INT
);

-- Sample Data

INSERT INTO Actors(id, name, age) VALUES
(1, Tom Hanks, 23)
(2, Scarlett Johansson, 34);

INSERT INTO Movies(id, title, year) VALUES
(1, Test Movie, 2020)
(2, Movie Test, 2024);
