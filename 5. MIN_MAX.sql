-- SELECT MIN UnitPrice AS MinPrice FROM Products
SELECT MIN([UnitPrice]) AS [MinPrice]
FROM [dbo].[Products];

-- SELECT MAX OrderDate AS MaxOrderDate FROM Orders
SELECT MAX([OrderDate]) AS [MaxOrderDate]
FROM [dbo].[Orders];

-- SELECT MAX UnitsInStock AS MaxUnitsInStock FROM Products
SELECT MAX([UnitsInStock]) AS [MaxUnitsInStock]
FROM [dbo].[Products];
