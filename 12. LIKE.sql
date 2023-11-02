-- Customers in countries with the letter A
SELECT *
FROM [dbo].[Customers]
WHERE [Country] LIKE 'A%';

-- Orders are sent to cities with the letter A
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'a%';

-- ShipCountry LIKE 'U_'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U_';

-- ShipCountry LIKE 'U%'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U%';