USE Northwind
SELECT COUNT(*) AS NumberOfOrders,
MIN(OrderDate) as EarliestOrder,
MAX(OrderDate) as LatestOrder
FROM Orders
WHERE EmployeeID = 1;