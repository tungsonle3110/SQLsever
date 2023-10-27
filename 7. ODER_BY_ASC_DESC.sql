-- Ascending
SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName] ASC;

SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName];

-- Descending
SELECT *
FROM [dbo].[Products]
ORDER BY [UnitPrice] DESC;

--
SELECT *
FROM [dbo].[Employees]
ORDER BY [LastName], [FirstName];

--
SELECT TOP 1 *
FROM [dbo].[Order Details]
ORDER BY [Quantity] DESC