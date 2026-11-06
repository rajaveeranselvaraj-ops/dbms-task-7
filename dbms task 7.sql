USE BrightMartDB;

SELECT * FROM Customer;
SELECT * FROM Product;

SELECT Product_Name, Price
FROM Product;

SELECT * FROM Orders;
SELECT * FROM Payment;

SELECT * FROM Product
WHERE Price > 5000;

SELECT * FROM Inventory
WHERE Stock_Quantity > 0;
SELECT * FROM Customer
WHERE City = 'Chennai';
SELECT * FROM Orders
WHERE Order_Status IN ('Completed', 'Delivered');
SELECT Product_ID, AVG(Rating) AS Average_Rating
FROM Review
GROUP BY Product_ID
HAVING AVG(Rating) > 4;
SELECT Product_ID, AVG(Rating) AS Average_Rating
FROM Review
GROUP BY Product_ID
HAVING AVG(Rating) > 4;
SELECT * FROM Customer
ORDER BY Customer_Name ASC;
SELECT * FROM Product
ORDER BY Price ASC;
SELECT * FROM Product
ORDER BY Price DESC;
SELECT * FROM Orders
ORDER BY Order_Date DESC;
SELECT DISTINCT Category_ID
FROM Product;
SELECT DISTINCT Payment_Mode
FROM Payment;
SELECT DISTINCT City
FROM Customer;
SELECT * FROM Product
WHERE Price BETWEEN 1000 AND 5000;
SELECT * FROM Product
WHERE Category_ID = 1;
SELECT Product.Product_ID,
       Product.Product_Name,
       Inventory.Stock_Quantity
FROM Product
JOIN Inventory
ON Product.Product_ID = Inventory.Product_ID
WHERE Inventory.Stock_Quantity > 0;
SELECT * FROM Product
WHERE Product_Name LIKE '%Mobile%';
SELECT * FROM Inventory
WHERE Stock_Quantity < 10;

SELECT Customer.Customer_ID,
       Customer.Customer_Name,
       Orders.Order_ID,
       Orders.Order_Date,
       Orders.Total_Amount
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID;
SELECT Product.Product_Name,
       Product.Price,
       Category.Category_Name
FROM Product
JOIN Category
ON Product.Category_ID = Category.Category_ID;
SELECT DISTINCT Customer.Customer_Name
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID
JOIN Order_Details
ON Orders.Order_ID = Order_Details.Order_ID
WHERE Order_Details.Product_ID = 101;

SELECT Customer.Customer_Name,
       Product.Product_Name,
       Order_Details.Quantity
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID
JOIN Order_Details
ON Orders.Order_ID = Order_Details.Order_ID
JOIN Product
ON Order_Details.Product_ID = Product.Product_ID;

SELECT * FROM Product
WHERE Category_ID = 1
AND Price > 10000;
SELECT * FROM Customer
WHERE City = 'Chennai'
OR City = 'Bangalore';
SELECT * FROM Product
WHERE Product_Name LIKE '%Mobile%';
SELECT * FROM Orders
WHERE Order_Date BETWEEN '2026-01-01'
AND '2026-12-31';
SELECT * FROM Product
WHERE Category_ID IN (1, 2, 3);
SELECT Product.Product_Name,
       Product.Price,
       Inventory.Stock_Quantity,
       Inventory.Stock_Status
FROM Product
JOIN Inventory
ON Product.Product_ID = Inventory.Product_ID;
SELECT COUNT(*) AS Total_Customers
FROM Customer;
SELECT City, COUNT(*) AS Total_Customers
FROM Customer
GROUP BY City;
SELECT *
FROM Customer
ORDER BY Registration_Date DESC;

SELECT COUNT(*) AS Total_Orders
FROM Orders;
SELECT COUNT(*) AS Completed_Orders
FROM Orders
WHERE Order_Status IN ('Completed', 'Delivered');
SELECT COUNT(*) AS Pending_Orders
FROM Orders
WHERE Order_Status = 'Pending';
SELECT COUNT(*) AS Cancelled_Orders
FROM Orders
WHERE Order_Status = 'Cancelled';
SELECT *
FROM Product
ORDER BY Price DESC
LIMIT 5;
SELECT Product.Product_Name,
       COUNT(Review.Review_ID) AS Total_Reviews
FROM Product
LEFT JOIN Review
ON Product.Product_ID = Review.Product_ID
GROUP BY Product.Product_ID, Product.Product_Name
ORDER BY Total_Reviews DESC;
SELECT Product.Product_Name,
       Product.Price,
       Inventory.Stock_Quantity
FROM Product
JOIN Inventory
ON Product.Product_ID = Inventory.Product_ID
WHERE Inventory.Stock_Quantity > 0;