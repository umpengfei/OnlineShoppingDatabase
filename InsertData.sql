USE "OnlineShopping";

OPEN SYMMETRIC KEY TestSymmetricKey
DECRYPTION BY CERTIFICATE TestCertificate;


INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(1, 'U.S.' , NULL, 'New York', 'Wall Street', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 304)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(2, 'U.S.' , NULL, 'New York', 'Broadway', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 75)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(3, 'Italy' , 'Lazio', 'Rome', 'Pine', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 509)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(4, 'U.S.' , 'N.Y.', 'Long Island', 'Cambridge', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 202)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(5, 'U.S.' , NULL, 'New York', 'Hoston', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 104)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(6, 'U.S.' , 'N.Y.', 'Long Island', 'Cambridge', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 202)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(7, 'U.S.' , 'M.A.', 'Boston', 'Newbury', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 101)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(8, 'U.S.' , NULL, 'Washington DC', '14th Street', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 23)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(9, 'U.S.' , 'M.A.', 'Boston', 'Cambridge', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 11)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(10,'U.K.' , NULL, 'London', 'Becker Street', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 221)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(11, 'U.K.' , 'Texas', 'Dallas', 'Fran Street', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 109)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(12, 'U.K.' , 'New Jersey', 'Atlantic City', 'Atlantic Avenue', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 103)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(13, 'Poland' , NULL, 'Warsaw', 'Polska St.', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 804)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(14, 'India' , 'Maharashtra', 'Mumbai', 'Fashion Street', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 11)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(15, 'U.S.' , 'California', 'Pasadena', 'Colorado St.', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 19)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(16, 'U.S.' , 'M.A.', 'Boston', 'Newbury', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 29)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(17, 'U.S.' , 'R.I.', 'Providence', 'Cambridge', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 34)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(18, 'U.S.' , 'California', 'Pasadena', 'Colorado St.', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 101)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(19, 'India' , 'Maharashtra', 'Mumbai', 'Fashion Street', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 11)));
INSERT
INTO Address(AddressID, Country, State, City, Street, Apt)
VALUES(20, 'U.S.' , 'California', 'Pasadena', 'Colorado St.', 
EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 23)));
select * from dbo.Address;


INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(1, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'chandlerb')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(2, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'rachelg')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(3, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'joeyt')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(4, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'monicag')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(5, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'phoebeb')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(6, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'rossg')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(7, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'guntherc')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(8, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'peteb')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(9, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'pauls')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(10, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'emilyw')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(11, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'sheldonc')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(12, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'leonardh')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(13, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'bernadetter')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(14, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'rajk')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(15, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'howardw')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(16, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'amyf')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(17, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'stuartb')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(18, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'barryk')),'@gmail.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(19, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'priyak')),'@yahoo.com');
INSERT
INTO Email (EmailID, Prefix, DomainName)
VALUES(20, EncryptByKey(Key_GUID(N'TestSymmetricKey'), convert(varbinary, 'lesliew')),'@gmail.com');
select * from Email;


INSERT dbo.Customers VALUES (1, 1, 'Chandler', 'Bing', 1);
INSERT dbo.Customers VALUES (2, 2, 'Rachel', 'Green', 2);
INSERT dbo.Customers VALUES (3, 3, 'Joey', 'Tribbiani', 3);
INSERT dbo.Customers VALUES (4, 4, 'Monica', 'Geller', 4);
INSERT dbo.Customers VALUES (5, 5, 'Phoebe', 'Buffay', 5);
INSERT dbo.Customers VALUES (6, 6, 'Ross', 'Geller', 6);
INSERT dbo.Customers VALUES (7, 7, 'Gunther', 'Centralperk', 7);
INSERT dbo.Customers VALUES (8, 8, 'Pete', 'Becker', 8);
INSERT dbo.Customers VALUES (9, 9, 'Paul', 'Stevens', 9);
INSERT dbo.Customers VALUES (10, 10, 'Emily', 'Waltham', 10);
INSERT dbo.Customers VALUES (11, 11, 'Sheldon', 'Cooper', 11);
INSERT dbo.Customers VALUES (12, 12, 'Leonard', 'Hofstadter', 12);
INSERT dbo.Customers VALUES (13, 13, 'Bernadette', 'Rostenkowski', 13);
INSERT dbo.Customers VALUES (14, 14, 'Raj', 'Koothrappali', 14);
INSERT dbo.Customers VALUES (15, 15, 'Howard', 'Wolowitz', 15);
INSERT dbo.Customers VALUES (16, 16, 'Amy', 'Fowler', 16);
INSERT dbo.Customers VALUES (17, 17, 'Stuart', 'Bloom', 17);
INSERT dbo.Customers VALUES (18, 18, 'Barry', 'Kripke', 18);
INSERT dbo.Customers VALUES (19, 19, 'Priya', 'Koothrappali', 19);
INSERT dbo.Customers VALUES (20, 20, 'Leslie', 'Winkle', 20);
select * from Customers;




INSERT dbo.SaleAssistant VALUES (1, 'Hermione','Granger');
INSERT dbo.SaleAssistant VALUES (2, 'Harry','Potter');
INSERT dbo.SaleAssistant VALUES (3, 'Draco','Malfoy');
INSERT dbo.SaleAssistant VALUES (4, 'Severus','Snape');
INSERT dbo.SaleAssistant VALUES (5, 'Ron','Weasley');
INSERT dbo.SaleAssistant VALUES (6, 'Ginny','Weasley');
INSERT dbo.SaleAssistant VALUES (7, 'Sirius','Black');
INSERT dbo.SaleAssistant VALUES (8, 'Luna','Lovegood');
INSERT dbo.SaleAssistant VALUES (9, 'Neville','Longbottom');
INSERT dbo.SaleAssistant VALUES (10, 'Remus','Lupin');
select * from SaleAssistant;


INSERT dbo.PrimeCustomer VALUES (1, 1, 1, 50.00);
INSERT dbo.PrimeCustomer VALUES (2, 2, 2, 50.00);
INSERT dbo.PrimeCustomer VALUES (3, 3, 4, 50.00);
INSERT dbo.PrimeCustomer VALUES (4, 4, 6, 50.00);
INSERT dbo.PrimeCustomer VALUES (5, 5, 7, 50.00);
INSERT dbo.PrimeCustomer VALUES (6, 6, 8, 100.00);
INSERT dbo.PrimeCustomer VALUES (7, 7, 9, 100.00);
INSERT dbo.PrimeCustomer VALUES (8, 8, 10, 100.00);
INSERT dbo.PrimeCustomer VALUES (9, 9, 11, 100.00);
INSERT dbo.PrimeCustomer VALUES (10, 10, 13, 100.00);
INSERT dbo.PrimeCustomer VALUES (11, 1, 14, 100.00);
INSERT dbo.PrimeCustomer VALUES (12, 2, 15, 100.00);
INSERT dbo.PrimeCustomer VALUES (13, 3, 18, 100.00);
INSERT dbo.PrimeCustomer VALUES (14, 4, 20, 100.00);
select * from PrimeCustomer;


INSERT dbo.Bank VALUES(1, 'Bank of America', 'Bank of America, N.A., 222 Broadway, New York, NY');
INSERT dbo.Bank VALUES(2, 'Bank of Italy', 'Via Nazionale, 91, 00184 Roma RM, Italy');
INSERT dbo.Bank VALUES(3, 'Wells Fargo', 'Wells Fargo, 420 Montgomery Street, San Francisco, CA');
INSERT dbo.Bank VALUES(4, 'JP Morgan', 'Chase Bank, 270 Park Avenue, New York, NY');
INSERT dbo.Bank VALUES(5, 'American Express', '20500 Belshaw Ave. Carson, CA');
INSERT dbo.Bank VALUES(6, 'Citigroup', '399 Park Avenue New York, NY');
INSERT dbo.Bank VALUES(7, 'PNC', '222 Delaware Avenue, Wilmington, DE');
INSERT dbo.Bank VALUES(8, 'BB&T', '200 W 2nd St, Winston Salem, NC');
INSERT dbo.Bank VALUES(9, 'M&T', 'M and T Bank One M and T Plaza, Buffalo, NY ');
INSERT dbo.Bank VALUES(10, 'HSBC', 'HSBC Bank USA NA P.O. Box 2013, Buffalo, NY');
select * from Bank;



INSERT dbo.DeliveryCompany VALUES(1, 'A.P. Moller–Maersk Group (APM)', 'Copley Place, 100 Huntington', 10.00);
INSERT dbo.DeliveryCompany VALUES(2, 'Mediterranean Shipping Company (MSC)', '8 Essex Center Dr # 3, Peabody, MA 01960', 8.00);
INSERT dbo.DeliveryCompany VALUES(3, 'COSCO', 'No.378, Dong Da Ming Road, Shanghai.', 7.00);
INSERT dbo.DeliveryCompany VALUES(4, 'CMA CGM Group', '48 Harvey St, Norton, MA 02766', 10.00);
INSERT dbo.DeliveryCompany VALUES(5, 'Hapag-Lloyd', 'PEACHTREE CORNERS, GA 30092', 12.00);
INSERT dbo.DeliveryCompany VALUES(6, 'Nippon Yusen', 'Nippon Yusen	300 Lighting Way, Secaucus, NJ 07094, U.S.A', 9.00);
INSERT dbo.DeliveryCompany VALUES(7, 'Evergreen Marine Corp.', 'No.166, Section 2 Minsheng East Road Jhongshan Distric', 10.00);
INSERT dbo.DeliveryCompany VALUES(8, 'Yang Ming Marine Transport Corporation.', 'One Newark Center, 1085 Raymond Blvd', 10.00);
INSERT dbo.DeliveryCompany VALUES(9, 'Pacific International Line (PIL)', '140 Cecil St, Singapore 069540', 12.00);
INSERT dbo.DeliveryCompany VALUES(10,'Hyundai M.M.', '300 SYLVAN AVENUE, ENGLEWOOD CLIFFS, NJ 07632, U.S.A.', 9.00);
--INSERT dbo.DeliveryCompany VALUES(11,'Hyundai M.M.', '300 SYLVAN AVENUE, ENGLEWOOD CLIFFS, NJ 07632, U.S.A.', 25.00);
--delete dbo.DeliveryCompany where CompanyID = 11;
select * from DeliveryCompany; 



INSERT dbo.Category VALUES(1, 'Clothing', 'Only Pay For The Clothes you Keep. Take Your Style Quiz!');
INSERT dbo.Category VALUES(2, 'Electronics', 'For all your electronics needs!');
INSERT dbo.Category VALUES(3, 'Grocery', 'Shop grocery stores you love and find your favorites at great prices!');
INSERT dbo.Category VALUES(4, 'Household', 'Shop for household  including Cleaning Supplies, Laundry Detergent, Paper Towels...');
INSERT dbo.Category VALUES(5, 'Pet Supplies', 'Shop for your pet including dogs, cats, fish, birds, reptiles, small animals.');
INSERT dbo.Category VALUES(6, 'Arts & Crafts', 'Products you need for home decor, framing, scrapbooking and more.');
INSERT dbo.Category VALUES(7, 'Books', 'Discover the best bookstore online—shop over 6 million books.');
INSERT dbo.Category VALUES(8, 'Beauty & Personal Care', 'Shop makeup, skin care, hair care, nail polish, beauty appliances.');
INSERT dbo.Category VALUES(9, 'CDs', 'Online shopping from a great selection at CDs & Vinyl Store.');
INSERT dbo.Category VALUES(10,'Kitchen', 'Find kitchen inspiration, shopping tips, and more.');
select * from Category;


INSERT dbo.Product VALUES(1, 1, 'Nike Men T-Shirt');
INSERT dbo.Product VALUES(2, 1, 'Gucci Jersey Dress');
INSERT dbo.Product VALUES(3, 2, 'Dell Inspiron');
INSERT dbo.Product VALUES(4, 2, 'iPhone XR');
INSERT dbo.Product VALUES(5, 3, '1 Gallon Whole Milk');
INSERT dbo.Product VALUES(6, 3, 'Classic Roast Coffee');
INSERT dbo.Product VALUES(7, 4, 'CPAP Cleaner Value Pack');
INSERT dbo.Product VALUES(8, 4, 'Home Security System');
INSERT dbo.Product VALUES(9, 5, 'Dog food lbs ');
INSERT dbo.Product VALUES(10, 5, 'Nylon Dog Collar');
INSERT dbo.Product VALUES(11, 6, 'DREAMS CANVAS ART ');
INSERT dbo.Product VALUES(12, 6, 'Stretch Canvas');
INSERT dbo.Product VALUES(13, 7, 'A Song of Ice and Fire');
INSERT dbo.Product VALUES(14, 7, 'Harry Potter');
INSERT dbo.Product VALUES(15, 8, 'NARS LIPSTICK');
INSERT dbo.Product VALUES(16, 8, 'NYX LIQUID LINER');
INSERT dbo.Product VALUES(17, 9, 'Blank CDs');
INSERT dbo.Product VALUES(18, 9, 'The Lion King soundtrack');
INSERT dbo.Product VALUES(19, 10, 'Kitchen Tabletop Set');
INSERT dbo.Product VALUES(20, 10, 'Classic Cookware Set');
select * from Product;



INSERT dbo.Customer_favorite_Product VALUES(6, 1);
INSERT dbo.Customer_favorite_Product VALUES(4, 3);
INSERT dbo.Customer_favorite_Product VALUES(9, 5);
INSERT dbo.Customer_favorite_Product VALUES(1, 5);
INSERT dbo.Customer_favorite_Product VALUES(3, 4);
INSERT dbo.Customer_favorite_Product VALUES(15, 5);
INSERT dbo.Customer_favorite_Product VALUES(3, 1);
INSERT dbo.Customer_favorite_Product VALUES(16,11);
INSERT dbo.Customer_favorite_Product VALUES(7, 5);
INSERT dbo.Customer_favorite_Product VALUES(3, 7);
select * from Customer_favorite_Product;



INSERT dbo.Seller VALUES(1, 'Jarvis A', 1);
INSERT dbo.Seller VALUES(2, 'B Pipe', 2);
INSERT dbo.Seller VALUES(3, 'New C', 3);
INSERT dbo.Seller VALUES(4, 'Sharp D', 4);
INSERT dbo.Seller VALUES(5, 'E Support', 5);
INSERT dbo.Seller VALUES(6, 'F Scribe', 1);
INSERT dbo.Seller VALUES(7, 'Tour G', 2);
INSERT dbo.Seller VALUES(8, 'H Patch', 3);
INSERT dbo.Seller VALUES(9, 'Balance I', 4);
INSERT dbo.Seller VALUES(10, 'J Cube', 5);
INSERT dbo.Seller VALUES(11, 'K Tech', 1);
INSERT dbo.Seller VALUES(12, 'L Cheap', 2);
INSERT dbo.Seller VALUES(13, 'Vesta M', 3);
INSERT dbo.Seller VALUES(14, 'N Line', 4);
INSERT dbo.Seller VALUES(15, 'Limit O', 5);
INSERT dbo.Seller VALUES(16, 'Mass P', 1);
INSERT dbo.Seller VALUES(17, 'Blog Q', 2);
INSERT dbo.Seller VALUES(18, 'R Bunny', 3);
INSERT dbo.Seller VALUES(19, 'Prima S', 4);
INSERT dbo.Seller VALUES(20, 'T Buys', 5);
select * from Seller;



INSERT dbo.Seller_Product VALUES(1, 1, 1, 100.00);
INSERT dbo.Seller_Product VALUES(2, 1, 2, 9999.99);
INSERT dbo.Seller_Product VALUES(3, 2, 1, 99.00);
INSERT dbo.Seller_Product VALUES(4, 3, 3, 999.90);
INSERT dbo.Seller_Product VALUES(5, 4, 4, 1080.00);
INSERT dbo.Seller_Product VALUES(6, 5, 5, 3.50);
INSERT dbo.Seller_Product VALUES(7, 6, 6, 44.00);
INSERT dbo.Seller_Product VALUES(8, 7, 7, 59.00);
INSERT dbo.Seller_Product VALUES(9, 8, 8, 888.00);
INSERT dbo.Seller_Product VALUES(10, 9, 9, 23.00);
INSERT dbo.Seller_Product VALUES(11, 10, 10, 10.00);
INSERT dbo.Seller_Product VALUES(12, 11, 11, 99.90);
INSERT dbo.Seller_Product VALUES(13, 12, 12, 89.00);
INSERT dbo.Seller_Product VALUES(14, 13, 13, 75.93);
INSERT dbo.Seller_Product VALUES(15, 14, 14, 56.99);
INSERT dbo.Seller_Product VALUES(16, 15, 15, 59.00);
INSERT dbo.Seller_Product VALUES(17, 16, 16, 20.00);
INSERT dbo.Seller_Product VALUES(18, 17, 17, 10.00);
INSERT dbo.Seller_Product VALUES(19, 18 ,18, 29.09);
INSERT dbo.Seller_Product VALUES(20, 19, 19, 789.99);
INSERT dbo.Seller_Product VALUES(21, 20, 20, 998.00);
select * from Seller_Product;



INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(1,6,1);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(2,4,3);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(3,8,6);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(4,2,4);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(5,6,3);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(6,9,8);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(7,10,3);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(8,3,7);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(9,1,9);
INSERT dbo.Orders(OrderID,CustomerID, CompanyID) VALUES(10,4,2);
select * from Orders;



INSERT dbo.Order_Session VALUES(1,1,2,5);
INSERT dbo.Order_Session VALUES(2,1,3,3);
INSERT dbo.Order_Session VALUES(3,1,5,1);
INSERT dbo.Order_Session VALUES(4,2,6,2);
INSERT dbo.Order_Session VALUES(5,2,2,4);
INSERT dbo.Order_Session VALUES(6,3,12,1);
INSERT dbo.Order_Session VALUES(7,4,16,2);
INSERT dbo.Order_Session VALUES(8,5,11,3);
INSERT dbo.Order_Session VALUES(9,5,4,3);
INSERT dbo.Order_Session VALUES(10,6,9,2);
INSERT dbo.Order_Session VALUES(11,6,16,1);
INSERT dbo.Order_Session VALUES(12,7,11,5);
INSERT dbo.Order_Session VALUES(13,8,7,3);
INSERT dbo.Order_Session VALUES(14,9,4,2);
INSERT dbo.Order_Session VALUES(15,10,9,4);
select * from Order_Session;




INSERT dbo.Evaluation VALUES(1,6,1,'Good');
INSERT dbo.Evaluation VALUES(2,4,2,'Bad');
INSERT dbo.Evaluation VALUES(3,8,3,'Good');
INSERT dbo.Evaluation VALUES(4,2,4,'Bad');
INSERT dbo.Evaluation VALUES(5,6,5,'Good');
INSERT dbo.Evaluation VALUES(6,9,6,'Bad');
INSERT dbo.Evaluation VALUES(7,10,7,'Good');
INSERT dbo.Evaluation VALUES(8,3,8,'Bad');
INSERT dbo.Evaluation VALUES(9,1,9,'Good');
INSERT dbo.Evaluation VALUES(10,4,10,'Bad');
select * from Evaluation;




INSERT dbo.Payment VALUES(1,6,1,2);
INSERT dbo.Payment VALUES(2,4,2,4);
INSERT dbo.Payment VALUES(3,8,3,6);
INSERT dbo.Payment VALUES(4,2,4,2);
INSERT dbo.Payment VALUES(5,6,5,8);
INSERT dbo.Payment VALUES(6,9,6,1);
INSERT dbo.Payment VALUES(7,10,7,5);
INSERT dbo.Payment VALUES(8,3,8,8);
INSERT dbo.Payment VALUES(9,1,9,3);
INSERT dbo.Payment VALUES(10,4,10,2);
select * from Payment;
























