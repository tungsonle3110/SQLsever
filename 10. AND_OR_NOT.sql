-- UnitsInStock<50 or UnitsInStock>100
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock]<50 OR [UnitsInStock]>100

-- ShipCountry='Brazil' and ShippedDate>RequiredDate
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry]='Brazil' AND [ShippedDate]>[RequiredDate]

-- CategoryID != 1 and UnitPrice < 100;
SELECT *
FROM [dbo].[Products]
WHERE [CategoryID]!=1 AND [UnitPrice]<100;

-- CategoryID != 1 and UnitPrice < 100;
-- use NOT
SELECT *
FROM [dbo].[Products]
WHERE NOT([CategoryID]=1 OR [UnitPrice]>=100);