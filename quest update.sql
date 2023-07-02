USE CustomerDB;
DROP TABLE Customers;

USE CustomerDB;

CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100)
);

INSERT INTO Customers (Name) VALUES ('Client1Z');
INSERT INTO Customers (Name) VALUES ('Client2Z');

SELECT * FROM Customers;

BEGIN TRANSACTION;

UPDATE Customers
SET Name = LEFT(Name, LEN(Name) - 1)
WHERE RIGHT(Name, 1) = 'Z';

SELECT * FROM Customers;

COMMIT TRANSACTION;

BEGIN TRANSACTION;