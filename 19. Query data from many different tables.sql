--
SELECT c.[CategoryID], c.[CategoryName], p.[ProductID], p.[ProductName]
FROM [dbo].[Products] AS p, [dbo].[Categories] as c
WHERE c.[CategoryID] = p.[CategoryID];

--
SELECT o.[EmployeeID], e.[LastName], e.[FirstName], COUNT(o.[OrderID]) AS [TotalOrders]
FROM [dbo].[Orders] AS o, [dbo].[Employees] AS e
WHERE o.[EmployeeID] = e.[EmployeeID]
GROUP BY o.[EmployeeID], e.[LastName], e.[FirstName];

--
SELECT c.[CustomerID], c.[CompanyName], c.[ContactName], COUNT(o.[OrderID]) AS [TotalOrders]
FROM [dbo].[Customers] AS c, [dbo].[Orders] AS o
WHERE c.[CustomerID] = o.[CustomerID]
GROUP BY c.[CustomerID], c.[CompanyName], c.[ContactName];

--
SELECT s.ShipperID, s.CompanyName, SUM(o.[Freight]) AS [TotalFreight]
FROM [dbo].[Shippers] AS s, [dbo].[Orders] AS o
WHERE s.[ShipperID] = o.[ShipVia]
GROUP BY s.[ShipperID], s.[CompanyName]
ORDER BY SUM(o.[Freight]) DESC;

--
SELECT TOP 1 s.[SupplierID], s.[CompanyName], COUNT(p.[ProductID]) AS [TotalProducts]
FROM [dbo].[Suppliers] AS s, [dbo].[Products] AS p
WHERE s.[SupplierID] = p.[SupplierID]
GROUP BY s.[SupplierID], s.[CompanyName]
ORDER BY COUNT(p.[ProductID]) DESC;

--
SELECT o.[OrderID], o.[CustomerID], SUM(od.[UnitPrice]*od.[Quantity]) AS [Total]
FROM [dbo].[Orders] AS o, [dbo].[Order Details] AS od
WHERE o.[OrderID] = od.[OrderID]
GROUP BY o.[OrderID], o.[CustomerID];

--
SELECT o.[OrderID], e.[LastName], e.[FirstName], SUM(od.[UnitPrice]*od.[Quantity]) AS [Total]
FROM [dbo].[Employees] AS e, [dbo].[Orders] AS o, [dbo].[Order Details] AS od
WHERE o.[OrderID] = od.[OrderID] AND o.[EmployeeID] = e.[EmployeeID]
GROUP BY o.[OrderID], e.[LastName], e.[FirstName];

--
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] AS c, [dbo].[Products] AS p
WHERE c.[CategoryID] = p.[CategoryID] AND c.[CategoryName] = 'Seafood';

--
SELECT s.[SupplierID], s.[Country], p.[ProductID], p.[ProductName], p.[UnitPrice]
FROM [dbo].[Suppliers] AS s, [dbo].[Products] AS p
WHERE s.[SupplierID] = p.[SupplierID] AND s.[Country] = 'Germany';

--
SELECT o.[OrderID], c.[ContactName], s.[CompanyName], o.[RequiredDate], o.[ShippedDate]
FROM [dbo].[Orders] AS o, [dbo].[Customers] AS c, [dbo].[Shippers] AS s
WHERE	o.[CustomerID] = c.[CustomerID]
		AND o.[ShipVia] = s.[ShipperID]
		AND o.[RequiredDate] < o.[ShippedDate]