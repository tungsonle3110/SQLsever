-- SELECT COUNT ALL AS NumberOfCustomers FROM Customers
SELECT COUNT(*) AS [NumberOfCustomers]
FROM [dbo].[Customers];

--SELECT SUM Freight AS SumFreight FROM Orders
SELECT SUM([Freight]) AS [SumFreight]
FROM [dbo].[Orders];

--SELECT AVG Quantity AS AvgQuantity FROM Order Details
SELECT AVG([Quantity]) AS [AvgQuantity]
FROM [dbo].[Order Details];

--
SELECT COUNT(*) AS [NumberOfProducts], SUM([UnitsInStock]) AS [TotalUnitsInStock], AVG([UnitPrice]) AS [AvgUnitPreice]
FROM [dbo].[Products]