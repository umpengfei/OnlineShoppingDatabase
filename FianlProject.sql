CREATE DATABASE "OnlineShopping"
--DROP DATABASE "OnlineShopping"

USE "OnlineShopping"
--USE "HE_PENGFEI_TEST"

--Encrypt the Apt number of the Customer Info and the Prefix of the Customer's email address.
CREATE MASTER KEY
ENCRYPTION BY PASSWORD = 'OnlineShopping_P@sswOrd';

CREATE CERTIFICATE TestCertificate
WITH SUBJECT = 'OnlineShopping Certificate',
EXPIRY_DATE = '2026-10-31';

CREATE SYMMETRIC KEY TestSymmetricKey
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE TestCertificate;

OPEN SYMMETRIC KEY TestSymmetricKey
DECRYPTION BY CERTIFICATE TestCertificate;

CREATE TABLE dbo.Address
 (
 AddressID int NOT NULL PRIMARY KEY ,
 Country varchar(40) NOT NULL,
 State varchar(40),
 City varchar(40) NOT NULL,
 Street varchar(40) NOT NULL,
 Apt varbinary(255) NOT NULL
 );

SELECT *
FROM Address

CREATE TABLE dbo.Email
 (
 EmailID int NOT NULL PRIMARY KEY ,
 Prefix varbinary(255) NOT NULL,
 DomainName varchar(40) NOT NULL
 );

SELECT *
FROM Email

CREATE TABLE dbo.Customers
 (
 CustomerID int NOT NULL PRIMARY KEY ,
 AddressID int NOT NULL REFERENCES Address(AddressID),
 FirstName varchar(40) NOT NULL,
 LastName varchar(40) NOT NULL,
 EmailID int NOT NULL REFERENCES Email(EmailID)
 );

SELECT *
FROM Customers

CREATE TABLE dbo.SaleAssistant
 (
 SaleAssistantID int NOT NULL PRIMARY KEY ,
 FirstName varchar(40) NOT NULL,
 LastName varchar(40) NOT NULL
 );

SELECT *
FROM SaleAssistant
 
CREATE TABLE dbo.PrimeCustomer
 (
 PrimeCustomerID int NOT NULL PRIMARY KEY ,
 SaleAssistantID int NOT NULL REFERENCES SaleAssistant(SaleAssistantID),
 CustomerID int NOT NULL REFERENCES Customers(CustomerID),
 PrimeFee decimal(18, 2) NOT NULL
 );

SELECT *
FROM PrimeCustomer

CREATE TABLE dbo.Bank
 (
 BankID int NOT NULL PRIMARY KEY ,
 BankName varchar(40) NOT NULL,
 Info varchar(400) NOT NULL,
 );

SELECT *
FROM Bank

CREATE TABLE dbo.DeliveryCompany
 (
 CompanyID int NOT NULL PRIMARY KEY ,
 CompanyName varchar(40) NOT NULL,
 Info varchar(400) NOT NULL,
 Price decimal(18, 2) NOT NULL
 );

SELECT *
FROM DeliveryCompany

CREATE TABLE dbo.Category
 (
 CategoryID int NOT NULL PRIMARY KEY ,
 CategoryName varchar(40) NOT NULL,
 CategoryInfo varchar(400) NOT NULL
 );

SELECT *
FROM Category

CREATE TABLE dbo.Product
 (
 ProductID int NOT NULL PRIMARY KEY ,
 CategoryID int NOT NULL
 REFERENCES Category(CategoryID),
 ProductName varchar(40) NOT NULL
 );

SELECT *
FROM Product

CREATE TABLE dbo.Customer_favorite_Product
(
CustomerID int NOT NULL 
	REFERENCES Customers,
ProductID int NOT NULL
	REFERENCES Product,
CONSTRAINT PKCustomer_favorite_Product PRIMARY KEY CLUSTERED
	(CustomerID, ProductID)
);

SELECT *
FROM Customer_favorite_Product

CREATE TABLE dbo.Seller
 (
 SellerID int NOT NULL PRIMARY KEY ,
 SellerName varchar(40) NOT NULL,
 SellerStarLevel int NOT NULL,
 );

SELECT *
FROM Seller

CREATE TABLE dbo.Seller_Product
 (
 SellerProductID int NOT NULL PRIMARY KEY ,
 SellerID int NOT NULL
 REFERENCES Seller(SellerID),
 ProductID int NOT NULL
 REFERENCES Product(ProductID),
 Price decimal(18, 2) NOT NULL,
 );

SELECT *
FROM Seller_Product

CREATE TABLE dbo.Orders
(
 OrderID int NOT NULL PRIMARY KEY,
 CustomerID int NOT NULL
 REFERENCES Customers(CustomerID),
 CompanyID int NOT NULL
 REFERENCES DeliveryCompany(CompanyID),
 OrderDate datetime DEFAULT Current_Timestamp
);

SELECT *
FROM Orders

CREATE TABLE dbo.Order_Session
(
 OrderSessionID int NOT NULL PRIMARY KEY,
 OrderID int NOT NULL
 REFERENCES Orders(OrderID),
 SellerProductID int NOT NULL
 REFERENCES Seller_Product(SellerProductID),
 Quantity int NOT NULL,
);

SELECT *
FROM Order_Session

CREATE TABLE dbo.Evaluation
 (
 EvaluationID int NOT NULL PRIMARY KEY ,
 CustomerID int NOT NULL
 REFERENCES Customers(CustomerID),
 OrderID int NOT NULL
 REFERENCES Orders(OrderID),
 Evaluation varchar(400) NOT NULL,
 );

SELECT *
FROM Evaluation

CREATE TABLE dbo.Payment
 (
 PaymentID int NOT NULL PRIMARY KEY ,
 CustomerID int NOT NULL
 REFERENCES Customers(CustomerID),
 OrderID int NOT NULL
 REFERENCES Orders(OrderID),
 BankID int NOT NULL
 REFERENCES Bank(BankID)
 );

SELECT *
FROM Payment
 
--use dynamic sql to create stored procedure to add Table-level Check Constraint to 
--DeliveryComany.
CREATE PROCEDURE CheckConstraintOnDeliveryCompany(@ConstraintName varchar(40), @PriceLimit decimal(18, 2))
AS
BEGIN
	DECLARE @SQL varchar(1000)
	SET @priceLimit = @PriceLimit
	SET @constraintName = @ConstraintName
	SET @SQL = 'ALTER TABLE DeliveryCompany' + ' ADD CONSTRAINT ' + @constraintName + ' CHECK (Price<=' + Convert(Varchar, @priceLimit) + ');'
	EXEC (@SQL)
END

--use dynamic sql to create stored procedure to delete a Table-level Check Contraint to DeliveryCompany
CREATE PROCEDURE deleteConstraintOnDeliveryCompany(@ConstraintName varchar(40))
AS
BEGIN
	DECLARE @SQL varchar(1000)
	SET @constraintName = @ConstraintName
	SET @SQL = 'ALTER TABLE DeliveryCompany' + ' DROP CONSTRAINT ' + @constraintName + ';'
	EXEC (@SQL)
END

EXEC CheckConstraintOnDeliveryCompany @ConstraintName='checkCompany', @PriceLimit=18.00;
EXEC deleteConstraintOnDeliveryCompany @ConstraintName='checkCompany';

--view to retrieve the detailed information of all prime customers
CREATE VIEW vWPrimeCustomerInfo
AS
SELECT c.CustomerID, c.FirstName, c.LastName, pc.PrimeFee
FROM Customers c
INNER JOIN PrimeCustomer pc
ON c.CustomerID = pc.CustomerID

SELECT * FROM vWPrimeCustomerInfo

--view the spending of each customers
CREATE VIEW vWCustomerSpending
AS
SELECT c.CustomerID, c.FirstName, c.LastName, SUM(Price) AS 'TotalSpending'
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
INNER JOIN Order_Session os
ON o.OrderID = os.OrderID
INNER JOIN Seller_Product p
ON os.SellerProductID = p.SellerProductID
GROUP BY c.CustomerID, c.FirstName, c.LastName

SELECT * FROM vWCustomerSpending

--view the most used Bank Brand
CREATE VIEW vWMostUsedBankBrand
AS
SELECT TOP(1) b.BankName, COUNT(b.BankName) AS 'UsedCount'
FROM Payment p
INNER JOIN Bank b
ON p.BankID = b.BankID
GROUP BY b.BankName
ORDER BY UsedCount DESC

SELECT * FROM vWMostUsedBankBrand





 
