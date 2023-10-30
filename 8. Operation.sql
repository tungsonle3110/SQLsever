-- StockRemaining = UnitsInStok - UnitsOnOrder
SELECT	[ProductID],
		[ProductName],
		[UnitsInStock],
		[UnitsOnOrder],
		([UnitsInStock] - [UnitsOnOrder]) AS [StockRemaining]
FROM [dbo].[Products];

-- OrderDetailValue = UnitPrice x Quantity
SELECT	*,
		([UnitPrice] * [Quantity]) AS [OrderDetailValue]
FROM [dbo].[Order Details];

-- FreightRatio = AVG[Freight]/MAX([Freight])
SELECT (AVG([Freight])/MAX([Freight])) AS FreightRatio
FROM [dbo].[Orders];