CREATE DATABASE ShopDB;

USE ShopDB;

CREATE TABLE Products
(
    ID              INT PRIMARY KEY AUTO_INCREMENT,
    Name            VARCHAR(50)    NOT NULL,
    Description     VARCHAR(100),
    Price           DECIMAL(10, 2) NOT NULL,
    WarehouseAmount INT            NOT NULL
);

CREATE TABLE Customers
(
    ID        INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName  VARCHAR(50) NOT NULL,
    Email     VARCHAR(50) NOT NULL,
    Address   TEXT
);

CREATE TABLE Orders
(
    ID         INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Date       DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers (ID) ON DELETE SET NULL
);

CREATE TABLE OrderItems
(
    ID        INT PRIMARY KEY AUTO_INCREMENT,
    OrderID   INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders (ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products (ID) ON DELETE SET NULL
);
