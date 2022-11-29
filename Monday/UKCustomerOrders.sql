USE Northwind
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.City, o.OrderID, o.OrderDate
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID
WHERE c.Country = 'UK'
ORDER BY CompanyName, OrderDate