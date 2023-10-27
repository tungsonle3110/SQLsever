-- Alias: ENGLISH > DEUTSCH
SELECT [CompanyName] AS [Name der Firma],
		[PostalCode] AS "Postleitzahl",
		[City] "Stadt"
FROM [dbo].[Customers]

SELECT [LastName] AS [Nachname], [FirstName] AS [Name]
FROM [dbo].[Employees]; 

SELECT TOP 15 [o].*
FROM [dbo].[Orders] AS [o]

SELECT TOP 15 [o].*
FROM [dbo].[Orders] AS [o]