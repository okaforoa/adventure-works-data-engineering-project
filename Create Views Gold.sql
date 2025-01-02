------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE VIEW gold.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awdldokafor.blob.core.windows.net/silver/Calendar/',
            FORMAT = 'PARQUET'
        ) as Query_1


------------------------
-- CREATE VIEW CUSTOMERS
------------------------
CREATE VIEW gold.customers
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awdldokafor.blob.core.windows.net/silver/Customers/',
            FORMAT = 'PARQUET'
        ) as Query_1



------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW gold.products
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awdldokafor.blob.core.windows.net/silver/Products/',
            FORMAT = 'PARQUET'
        ) as Query_1


------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awdldokafor.blob.core.windows.net/silver/Returns/',
            FORMAT = 'PARQUET'
        ) as Query_1


------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW gold.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awdldokafor.blob.core.windows.net/silver/Sales/',
            FORMAT = 'PARQUET'
        ) as Query_1


------------------------
-- CREATE VIEW PRODSUBCAT
------------------------
CREATE VIEW gold.prodsubcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awdldokafor.blob.core.windows.net/silver/Product_Subcategories/',
            FORMAT = 'PARQUET'
        ) as Query_1



------------------------
-- CREATE VIEW TERRITORIES
------------------------
CREATE VIEW gold.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awdldokafor.blob.core.windows.net/silver/Territories/',
            FORMAT = 'PARQUET'
        ) as Query_1

