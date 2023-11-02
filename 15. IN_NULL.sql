-- ShippedDate is null
SELECT *
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

SELECT COUNT(*)
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

-- RegionDescription is not null
SELECT *
FROM [dbo].[Region]
WHERE [RegionDescription] IS NOT NULL;

-- CompanyName is null
SELECT *
FROM [dbo].[Customers]
WHERE [CompanyName] IS NULL;
