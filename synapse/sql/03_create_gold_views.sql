----------------------
-- CALENDAR
----------------------
CREATE OR ALTER VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakemp.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS Q;
GO

----------------------
-- CUSTOMERS
----------------------
CREATE OR ALTER VIEW gold.customers
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakemp.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS Q;
GO

----------------------
-- PRODUCTS
----------------------
CREATE OR ALTER VIEW gold.products
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakemp.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS Q;
GO

----------------------
-- RETURNS
----------------------
CREATE OR ALTER VIEW gold.returns
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakemp.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS Q;
GO

----------------------
-- SALES
----------------------
CREATE OR ALTER VIEW gold.sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakemp.dfs.core.windows.net/silver/AdventureWork_Sales/',
    FORMAT = 'PARQUET'
) AS Q;
GO

----------------------
-- PRODUCT SUBCATEGORIES
----------------------
CREATE OR ALTER VIEW gold.subcat
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakemp.dfs.core.windows.net/silver/AdventureWorks_Subcategories/',
    FORMAT = 'PARQUET'
) AS Q;
GO

----------------------
-- TERRITORIES
----------------------
CREATE OR ALTER VIEW gold.territories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakemp.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS Q;
GO
