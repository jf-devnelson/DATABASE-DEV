CREATE DATABASE Shop_DB;
USE Shop_DB;
CREATE TABLE ShopProducts (
ProductCode INT PRIMARY KEY,
ProductName VARCHAR(50), 
Department VARCHAR(50),
Stock INT,
Cost INT );
INSERT INTO ShopProducts (ProductCode,ProductName,Department,Stock,Cost)
VALUES
(201,'Cooking Oil','Grocery',35,320),
(202,'Toothpaste','Cosmetics',50,95),
(203,'Bisuits','Snacks',45,80),
(204,'Washing Powder','Cleaning',20,250),
(205,'Juice','Drinks',60,150);
SELECT ProductName, Cost
FROM ShopProducts
WHERE Department = 'Cleaning' AND Cost > 200;
