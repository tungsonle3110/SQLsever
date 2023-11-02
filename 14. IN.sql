-- ShipCountry in Germany, UK, Brazil
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] ='Germany' OR [ShipCountry] ='UK' OR [ShipCountry] ='Brazil';

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] IN ('Germany', 'UK', 'Brazil');

-- ShipCountry not in Germany, UK, Brazil
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] NOT IN ('Germany', 'UK', 'Brazil');

-- CategoryID not in 2, 3, 4
SELECT *
FROM [dbo].[Products]
WHERE [CategoryID] NOT IN (2, 3, 4);

-- TitleOfCourtesy in Ms., Mrs.
SELECT *
FROM [dbo].[Employees]
WHERE [TitleOfCourtesy] NOT IN ('Ms.', 'Mrs.');

-- TitleOfCourtesy not in Ms., Mrs.
SELECT *
FROM [dbo].[Employees]
WHERE [TitleOfCourtesy] IN ('Ms.', 'Mrs.');