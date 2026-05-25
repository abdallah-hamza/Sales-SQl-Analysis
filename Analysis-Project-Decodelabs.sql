CREATE DATABASE Sales_db;

use Sales_db;

# Retrieve all records from the orders table
SELECT * FROM sales;

# Display the first 10 rows from the dataset
SELECT * FROM sales
LIMIT 10;

# Find the total number of orders
SELECT COUNT(*) AS Total_Orders
FROM sales;

# Calculate the total revenue generated
SELECT SUM(TotalPrice) AS Total_Revenue
FROM sales;

# Calculate the average order value
SELECT AVG(TotalPrice) AS Avg_Order_Value
FROM sales;

# Find the number of orders for each product
SELECT Product, COUNT(*) AS Total_Orders
FROM sales
GROUP BY Product
ORDER BY Total_Orders DESC;

# Calculate total sales for each product
SELECT Product, SUM(TotalPrice) AS Total_Sales
FROM sales
GROUP BY Product
ORDER BY Total_Sales DESC;

# Find the best-selling product based on quantity sold
SELECT Product, SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY Product
ORDER BY Total_Quantity DESC;

# Find the most frequently used payment method
SELECT PaymentMethod, COUNT(*) AS Total_Usage
FROM sales
GROUP BY PaymentMethod
ORDER BY Total_Usage DESC;

# Display the distribution of order statuses
SELECT OrderStatus, COUNT(*) AS Count_Status
FROM sales
GROUP BY OrderStatus;

# Find the number of orders by referral source
SELECT ReferralSource, COUNT(*) AS Total_Orders
FROM sales
GROUP BY ReferralSource
ORDER BY Total_Orders DESC;

# Count the number of orders that used a coupon code
SELECT COUNT(*) AS Orders_With_Coupon
FROM sales
WHERE CouponCode IS NOT NULL;

# Retrieve all delivered orders
SELECT *
FROM sales
WHERE OrderStatus = 'Delivered';

# Display the top 5 highest-value orders
SELECT *
FROM sales
ORDER BY TotalPrice DESC
LIMIT 5;

# Identify invalid or abnormal records in the dataset
SELECT *
FROM sales
WHERE TotalPrice < 0 OR Quantity <= 0;

# Find the highest and lowest order values
SELECT 
MAX(TotalPrice) AS Highest_Order,
MIN(TotalPrice) AS Lowest_Order
FROM sales;