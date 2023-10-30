-- City=London
SELECT *
FROM [dbo].[Employees]
WHERE [City]='London';

-- A-Z
SELECT *
FROM [dbo].[Employees]
WHERE [City]='London'
ORDER BY [LastName] ASC;

-- Delivery late
SELECT [OrderDate], [RequiredDate]
FROM [dbo].[Orders]
WHERE [ShippedDate] > [RequiredDate];

-- Number of late delivery orders
SELECT COUNT(*) AS [Number of late delivery orders]
FROM [dbo].[Orders]
WHERE [ShippedDate] > [RequiredDate];

-- Discount > 0.1
SELECT *
FROM [dbo].[Order Details]
WHERE [Discount]>0.1;