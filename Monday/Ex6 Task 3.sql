USE Northwind
SELECT c.CustomerID, c.CompanyName, c.ContactName, o.OrderID, o.OrderDate, od.ProductID, od.Quantity, p.ProductID, p.ProductName
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID
JOIN [Order Details] AS od
ON o.OrderID = od.OrderID
JOIN Products AS p
ON od.ProductID = p.ProductID
WHERE c.Country = 'UK'
ORDER BY CompanyName, OrderDate