CREATE DATABASE SCOPED CREDENTIAL cred_malay
WITH
    IDENTITY = 'Managed Identity';
GO

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awstoragedatalakemp.dfs.core.windows.net/silver',
    CREDENTIAL = cred_malay
);
GO

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awstoragedatalakemp.dfs.core.windows.net/gold',
    CREDENTIAL = cred_malay
);
GO

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);
GO
