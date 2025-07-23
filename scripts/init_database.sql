/*
=================================================================
Create Database and Schemas
=================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running the script will drop the entire 'DataWarehouse' database if it exists,
  All data in the database will be permanently deleted. Proceed with caution
  and ensure proper backups before running this script.

*/


USE master;
GO

-- Drop and Recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET  SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
-- Create Layers for DataWarehouse
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
