-- TotalOrders group by CustomerID
SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID];

-- AvgUnitPrice group by SupplierID
SELECT [SupplierID], AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products]
GROUP BY [SupplierID];

--TotalUnitsInStock group by CategoryID
SELECT [CategoryID], SUM([UnitsInStock]) AS [TotalUnitsInStock]
FROM [dbo].[Products]
GROUP BY [CategoryID];

--  MinFreight, MaxFreight group by ShipCountry, ShipCity
SELECT	[ShipCountry], [ShipCity],
		MIN([Freight]) AS [MinFreight],
		MAX([Freight]) AS [MaxFreight]
FROM [dbo].[Orders]
GROUP BY [ShipCountry], [ShipCity]
ORDER BY [ShipCountry] ASC, [ShipCity] ASC;