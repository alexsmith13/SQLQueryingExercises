USE Northwind
SELECT COUNT(OrderID) AS NumberOfOrders, CustomerID
FROM Orders GROUP BY CustomerID ORDER BY NumberOfOrders DESC