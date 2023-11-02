-- TotalOrders - year 1997 group by CustomerID, year
SELECT	[CustomerID],
		COUNT([OrderID]) AS [TotalOrders],
		YEAR ([OrderDate]) AS [Year]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate])=1997
GROUP BY [CustomerID], YEAR([OrderDate]);

-- Orders - month 5 and year 1997
SELECT *
FROM [dbo].[Orders]
WHERE MONTH([OrderDate])=5 AND YEAR([OrderDate])=1997;

-- Orders - daz 4 month 9 and year 1996
SELECT *
FROM [dbo].[Orders]
WHERE DAY([OrderDate])=4 AND MONTH([OrderDate])=9 AND YEAR([OrderDate])=1996;

-- TotalOrders - year 1998 group by CustomerID, month
SELECT [CustomerID], MONTH([OrderDate]) as [Month], COUNT(*) AS [TotalOrders]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate])=1998
GROUP BY [CustomerID], MONTH([OrderDate])
ORDER BY MONTH([OrderDate]) ASC;