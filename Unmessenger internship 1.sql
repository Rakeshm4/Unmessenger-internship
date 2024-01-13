CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
	Name VARCHAR(255),
    Email VARCHAR(255),
    JoinDate DATE
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Category VARCHAR(255),
    Price DECIMAL(10,2)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PricePerUnit DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers (CustomerID, Name, Email, JoinDate) VALUES
(1, 'John Doe', 'johndoe@example.com', '2020-01-10'),
(2, 'Jane Smith', 'janesmith@example.com', '2020-01-15'),
(3, 'Rahul', 'rahulooh@example.com', '2020-01-14'),
(4, 'Kushina', 'kushinaww@example.com', '2020-01-13'),
(5, 'karan', 'karanbb@example.com', '2020-01-12'),
(6, 'Ranjith', 'ranjithyy@example.com', '2020-01-19'),
(7, 'Ragner', 'rangneruu@example.com', '2020-01-20'),
(8, 'charen', 'charenll@example.com', '2020-01-11'),
(9, 'Minato', 'minatopp@example.com', '2020-01-18'),
(10, 'Alice Johnson', 'alicejohnson@example.com', '2020-03-05');

INSERT INTO Products (ProductID, Name, Category, Price) VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 499.99),
(3, 'Wall Sheet', 'Home Decor', 399.99),
(4, 'Watch', 'Electronics', 799.99),
(5, 'Gas Stove', 'Cooking', 899.99),
(6, 'Powerbank', 'Electronics', 299.99),
(7, 'Container', 'Cooking', 249.99),
(8, 'Oven', 'Electronics', 1499.99),
(9, 'Indoor plants', 'Home Decor', 199.99),
(10, 'Desk Lamp', 'Home Decor', 29.99);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 1, '2020-02-15', 1499.98),
(2, 2, '2020-02-17', 499.99),
(3, 2, '2020-02-16', 399.99),
(4, 3, '2020-02-17', 299.99),
(5, 5, '2020-03-19', 249.99),
(6, 6, '2020-03-12', 199.99),
(7, 8, '2020-03-13', 799.99),
(8, 7, '2020-03-14', 599.99),
(9, 5, '2020-03-17', 799.99),
(10, 10, '2020-03-21', 78.99);

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity,
PricePerUnit) VALUES
(1, 1, 1, 1, 999.99),
(2, 2, 2, 2, 199.99),
(3, 3, 3, 1, 249.99),
(4, 4, 4, 1, 399.99),
(5, 5, 5, 1, 299.99),
(6, 6, 6, 1, 1499.99),
(7, 7, 7, 1, 499.99),
(8, 8, 8, 1, 499.99),
(9, 9, 9, 1, 499.99),
(10, 10, 10, 2, 29.99);