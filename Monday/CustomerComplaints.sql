USE Northwind
SELECT OrderID, CustomerID, OrderDate FROM Orders WHERE (CustomerID IN ('ALFKI','ERNSH','SIMOB')) AND OrderDate BETWEEN '8/1/1997' AND '8/31/1997';