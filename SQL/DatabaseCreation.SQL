IF DB_ID('StudentDepressionDB') IS NULL
  CREATE DATABASE StudentDepressionDB;
GO

USE StudentDepressionDB;
GO

SELECT DB_NAME() AS current_db;  -- verify
GO
