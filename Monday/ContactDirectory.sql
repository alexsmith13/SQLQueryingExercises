USE Northwind
SELECT CompanyName, ContactName, Phone 
FROM Customers
UNION ALL
SELECT CompanyName, ContactName, Phone
FROM Suppliers
UNION ALL
SELECT 'Northwind Traders',FirstName + ' ' + LastName AS FullName, Extension
FROM Employees;