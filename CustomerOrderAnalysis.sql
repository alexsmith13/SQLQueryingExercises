USE Northwind
SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders, MIN(o.OrderDate) AS MinDate
FROM Orders AS o
RIGHT OUTER JOIN Customers AS c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName
ORDER BY NumOrders
