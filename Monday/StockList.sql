USE Northwind
SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, UnitsInStock * UnitPrice AS CurrentStockValue, (UnitsOnOrder + UnitsInStock) * UnitPrice AS FutureStockValue FROM Products WHERE (UnitsOnOrder + UnitsInStock) * UnitPrice > 2000;
