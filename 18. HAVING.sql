-- TotalOrders > 20 group by [CustomerID] order by TotalOrders DESC
SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT([OrderID]) > 20
ORDER BY COUNT([OrderID]) DESC;

-- TotalUnitInStock > 20 and AvgUnitPrice < 50 group by CategoryID
SELECT	[CategoryID],
		SUM([UnitsInStock]) AS [TotalUnitInStock],
		AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products]
GROUP BY [CategoryID]
HAVING SUM([UnitsInStock])>20 AND AVG([UnitPrice])<50;

--
SELECT MONTH([ShippedDate]) AS [Month], SUM([Freight]) AS [TotalFreight]
FROM [dbo].[Orders]
WHERE  MONTH([ShippedDate]) BETWEEN 7 AND 12 AND YEAR([ShippedDate])=1996
GROUP BY MONTH([ShippedDate])
HAVING SUM([Freight])>1000
ORDER BY MONTH([ShippedDate]) ASC;