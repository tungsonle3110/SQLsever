-- Names starting with A
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'A%';

-- Names with more than 1 letter starting with H
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'H_%';

-- ShipCity names have the first letter starting with L, the second letter is u or o
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[u,o]%';

-- ShipCity names have the first letter starting with L, the second letter is not u or o
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[^u,o]%';

-- ShipCity names have the first letter starting with L, the second letter from a to e
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[a-e]%';

