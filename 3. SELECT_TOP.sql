-- SELECT TOP 5 ALL FROM Customers
SELECT TOP 5 *
FROM [dbo].[Customers];

-- SELECT TOP 30 PERCENT ALL FROM Employees
SELECT TOP 30 PERCENT *
FROM [dbo].[Employees];

--SELECT TOP 5 CustomerID FROM Orders
SELECT  TOP 5 [CustomerID]
FROM [dbo].[Orders];

--SELECT DISTINCT TOP 5 CustomerID FROM Orders
SELECT DISTINCT TOP 5 [CustomerID]
FROM [dbo].[Orders];