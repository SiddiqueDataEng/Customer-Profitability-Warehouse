/*
 * Customer Profitability Warehouse
 * Project #53 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, OLAP
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ProfitabilityDW')
BEGIN
    ALTER DATABASE ProfitabilityDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ProfitabilityDW;
END
GO

CREATE DATABASE ProfitabilityDW
ON PRIMARY
(
    NAME = 'ProfitabilityDW_Data',
    FILENAME = 'C:\SQLData\ProfitabilityDW_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ProfitabilityDW_Log',
    FILENAME = 'C:\SQLData\ProfitabilityDW_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ProfitabilityDW SET RECOVERY SIMPLE;
ALTER DATABASE ProfitabilityDW SET AUTO_UPDATE_STATISTICS ON;
GO

USE ProfitabilityDW;
GO

PRINT 'Database ProfitabilityDW created successfully';
PRINT 'Project: Customer Profitability Warehouse';
PRINT 'Description: High-value customer identification';
GO
